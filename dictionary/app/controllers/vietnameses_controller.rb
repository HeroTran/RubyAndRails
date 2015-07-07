class VietnamesesController < ApplicationController
    before_action :set_vietnamese, only: [:show, :edit, :update, :destroy]
    before_action :check_login
    # GET /vietnameses
    # GET /vietnameses.json
    def index
        if(params[:search] && params[:search]!="")
            @vietnameses = Vietnamese.admin_search(params[:search]).paginate(:page => params[:page], :per_page => 12)
        else
            @vietnameses = Vietnamese.paginate(:page => params[:page], :per_page => 12)
        end
    end

    # GET /vietnameses/1
    # GET /vietnameses/1.json
    def show
    end

    # GET /vietnameses/new
    def new
        @vietnamese = Vietnamese.new
    end

    # GET /vietnameses/1/edit
    def edit
    end
    #create row for table Vietnamese
    # POST /vietnameses
    # POST /vietnameses.json
    def create
        if params[:vietnamese][:sound_word]
            file_name = Vietnamese.upload(params[:vietnamese][:sound_word],"vietnamese")
        else
            file_name = ""
        end
        @arr_parram =  vietnamese_params
        @arr_parram[:sound_word] = file_name
        @arr_parram[:word_vietnamese]= @arr_parram[:word_vietnamese].strip
        @arr_parram[:word_japanese] = @arr_parram[:word_japanese].strip
        @arr_parram[:deleted] = 0 # từ chưa được xóa
        @arr_parram[:word_vietnamese_replace] =Vietnamese.replace_special_chars(@arr_parram[:word_vietnamese].strip)
        @vietnamese = Vietnamese.new(@arr_parram)
        respond_to do |format|
            if @vietnamese.save
                format.html { redirect_to @vietnamese, notice: 'Vietnamese was successfully created.' }
                format.json { render action: 'show', status: :created, location: @vietnamese }
            else
                format.html { render action: 'new' }
                format.json { render json: @vietnamese.errors, status: :unprocessable_entity }
            end
        end
    end
    # update row
    # PATCH/PUT /vietnameses/1
    # PATCH/PUT /vietnameses/1.json
    def update
        deleted= params[:deleted]
        @arr_parram =  vietnamese_params
        files = @vietnamese.sound_word
        if params[:vietnamese][:sound_word] && files!=""
            file_name = Vietnamese.upload(params[:vietnamese][:sound_word], "vietnamese")

            File.delete("public/vietnamese/" + files)
            @arr_parram[:sound_word] = file_name
        elsif files!=""
            @arr_parram[:sound_word] = files
        elsif params[:vietnamese][:sound_word]
            file_name = Vietnamese.upload(params[:vietnamese][:sound_word], "vietnamese")
            @arr_parram[:sound_word] = file_name
        end
        @arr_parram[:word_vietnamese]= @arr_parram[:word_vietnamese].strip
        @arr_parram[:word_japanese] = @arr_parram[:word_japanese].strip
        @arr_parram[:deleted] = deleted
        @arr_parram[:word_vietnamese_replace] =Vietnamese.replace_special_chars(@arr_parram[:word_vietnamese].strip)
        respond_to do |format|
            if @vietnamese.update(@arr_parram)
                format.html { redirect_to @vietnamese, notice: 'Vietnamese was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render action: 'edit' }
                format.json { render json: @vietnamese.errors, status: :unprocessable_entity }
            end
        end
    end
    # update column deleted = 1 for row deleted
    # DELETE /vietnameses/1
    # DELETE /vietnameses/1.json
    def destroy
        respond_to do |format|
            if @vietnamese.update_attributes(:deleted => 1)
                format.html { redirect_to vietnameses_path, notice: 'Vietnamese was successfully deleted.' }
                format.json { head :no_content }
            end
        end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_vietnamese
        @vietnamese = Vietnamese.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vietnamese_params
        params.require(:vietnamese).permit(:word_vietnamese, :word_japanese, :sound_word, :deleted, :note)
    end
end
