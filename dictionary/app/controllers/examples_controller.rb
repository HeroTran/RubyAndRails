class ExamplesController < ApplicationController
    before_action :set_example, only: [:show, :edit, :update, :destroy]
    before_action :check_login
    # GET /examples
    # GET /examples.json
    def index
        #    @example = []
        if(params[:search] && params[:search]!="")
            @examples = Example.searchVi(params[:search]).paginate(:page => params[:page], :per_page => 12)
        end
        if @examples && @examples.length == 0
            @examples = Example.searchJa(params[:search]).paginate(:page => params[:page], :per_page => 12)
        end
        if ! @examples
            @examples = Example.paginate(:page => params[:page], :per_page => 12)
        end
    end

    # GET /examples/1
    # GET /examples/1.json
    def show
    end

    # GET /examples/new
    def new
        @example = Example.new
    end

    # GET /examples/1/edit
    def edit
    end
    #create row for table Example
    # POST /examples
    # POST /examples.json
    def create
        @example = Example.new(example_params)
        @ex = example_params
        @ex[:deleted] = 0
        @ex[:ex_japanese]= @ex[:ex_japanese].strip
        @ex[:ex_vietnamese] = @ex[:ex_vietnamese].strip
        @example = Example.new(@ex)
        respond_to do |format|
            if @example.save
                format.html { redirect_to @example, notice: 'Example was successfully created.' }
                format.json { render action: 'show', status: :created, location: @example }
            else
                format.html { render action: 'new' }
                format.json { render json: @example.errors, status: :unprocessable_entity }
            end
        end
    end
    #update row for table japanese
    # PATCH/PUT /examples/1
    # PATCH/PUT /examples/1.json
    def update
        deleted= params[:deleted]
        @ex = example_params
        @ex[:ex_japanese]= @ex[:ex_japanese].strip
        @ex[:ex_vietnamese] = @ex[:ex_vietnamese].strip
        @ex[:deleted] = deleted
        respond_to do |format|
            if @example.update(@ex)
                format.html { redirect_to @example, notice: 'Example was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render action: 'edit' }
                format.json { render json: @example.errors, status: :unprocessable_entity }
            end
        end
    end
    #update column deleted=1 for row deleted
    # DELETE /examples/1
    # DELETE /examples/1.json
    def destroy
        @example.update_attributes(:deleted => 1)
        respond_to do |format|
            format.html { redirect_to examples_url }
            format.json { head :no_content }
        end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_example
        @example = Example.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def example_params
        params.require(:example).permit(:ex_japanese, :ex_vietnamese, :deleted)
    end
end
