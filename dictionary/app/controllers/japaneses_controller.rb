class JapanesesController < ApplicationController
    before_action :set_japanese, only: [:show, :edit, :update, :destroy]
    before_action :check_login
    # GET /japaneses
    # GET /japaneses.json
    def index
        if(params[:search] && params[:search]!="")
            @japaneses = Japanese.admin_search(params[:search].strip).paginate(:page => params[:page], :per_page => 12)
        else
            @japaneses = Japanese.paginate(:page => params[:page], :per_page => 12)
        end
    end

    # GET /japaneses/1
    # GET /japaneses/1.json
    def show
    end

    # GET /japaneses/new
    def new
        @japanese = Japanese.new
    end

    # GET /japaneses/1/edit
    def edit
    end

    #create new row for table Japanese
    # POST /japaneses
    # POST /japaneses.json
    def create
        @japanese = Japanese.new(japanese_params)
        if params[:japanese][:sound_word]
            file_name = Japanese.upload(params[:japanese][:sound_word], "japanese")
        else
            file_name = ""
        end
        @arr_parram =  japanese_params
        @arr_parram[:sound_word] = file_name
        @arr_parram[:word_japanese]= @arr_parram[:word_japanese].strip
        @arr_parram[:word_vietnamese] = @arr_parram[:word_vietnamese].strip
        @arr_parram[:deleted] = 0 #  tu chua duoc xoa
        @japanese = Japanese.new(@arr_parram)
        respond_to do |format|
            if @japanese.save
                format.html { redirect_to @japanese, notice: 'Japanese was successfully created.' }
                format.json { render action: 'show', status: :created, location: @japanese }
            else
                format.html { render action: 'new' }
                format.json { render json: @japanese.errors, status: :unprocessable_entity }
            end
        end
    end

    #update row
    # PATCH/PUT /japaneses/1
    # PATCH/PUT /japaneses/1.json
    def update
        deleted= params[:deleted]
        @arr_parram =  japanese_params
        files = @japanese.sound_word
        if params[:japanese][:sound_word] && files!=""
            file_name = Japanese.upload(params[:japanese][:sound_word], "japanese")
            File.delete("public/japanese/" + files)
            @arr_parram[:sound_word] = file_name
        elsif files == ""
            @arr_parram[:sound_word] = files
        elsif params[:japanese][:sound_word]
            file_name = Japanese.upload(params[:japanese][:sound_word], "japanese")
            @arr_parram[:sound_word] = file_name
        end
        @arr_parram[:word_japanese]= @arr_parram[:word_japanese].strip
        @arr_parram[:word_vietnamese] = @arr_parram[:word_vietnamese].strip
        @arr_parram[:deleted] = deleted
        respond_to do |format|
            if @japanese.update(@arr_parram)
                format.html { redirect_to @japanese, notice: 'Japanese was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render action: 'edit' }
                format.json { render json: @japanese.errors, status: :unprocessable_entity }
            end
        end
    end

    # update column delete = 1 for row deleted
    # DELETE /japaneses/1
    # DELETE /japaneses/1.json
    def destroy
        respond_to do |format|
            if @japanese.update_attributes(:deleted => 1)
                format.html { redirect_to japaneses_path, notice: 'Japanese was successfully deleted.' }
                format.json { head :no_content }
            end
        end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_japanese
        @japanese = Japanese.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def japanese_params
        params.require(:japanese).permit(:word_japanese, :word_vietnamese, :sound_word, :note)
    end
end
