class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render action: 'show', status: :created, location: @property }
      else
        format.html { render action: 'new' }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:code, :name, :address_1, :address_2, :address_3, :address_4, :post_code, :client_dx, :tel_1, :tel_2, :description, :client_fax, :last_val, :purchase_price, :purchase_date, :last_val_date, :loan_with, :loan_amount, :vat, :account_manager_id, :portfolio, :bought_from, :total_value, :date_on, :client_dv, :contract_type, :contract_collect, :contract_dealer, :contract_billed, :contract_renew, :date_m_visit, :last_person, :contract_vis_1, :contract_vis_2, :contract_vis_3, :contract_vis_4, :contract_vis_5, :contract_vis_6, :contract_vis_7, :contract_vis_8, :contract_vis_9, :contract_vis_10, :contract_vis_11, :contract_vis_12, :client_no_visits, :property_sold, :property_sold_date, :property_sell_val, :property_last_bill, :property_last_bill_val)
    end
end
