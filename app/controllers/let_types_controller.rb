class LetTypesController < ApplicationController
  before_action :set_let_type, only: [:show, :edit, :update, :destroy]

  # GET /let_types
  # GET /let_types.json
  def index
    @let_types = LetType.all
  end

  # GET /let_types/1
  # GET /let_types/1.json
  def show
  end

  # GET /let_types/new
  def new
    @let_type = LetType.new
  end

  # GET /let_types/1/edit
  def edit
  end

  # POST /let_types
  # POST /let_types.json
  def create
    @let_type = LetType.new(let_type_params)

    respond_to do |format|
      if @let_type.save
        format.html { redirect_to @let_type, notice: 'Let type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @let_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @let_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /let_types/1
  # PATCH/PUT /let_types/1.json
  def update
    respond_to do |format|
      if @let_type.update(let_type_params)
        format.html { redirect_to @let_type, notice: 'Let type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @let_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /let_types/1
  # DELETE /let_types/1.json
  def destroy
    @let_type.destroy
    respond_to do |format|
      format.html { redirect_to let_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_let_type
      @let_type = LetType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def let_type_params
      params.require(:let_type).permit(:type, :description)
    end
end
