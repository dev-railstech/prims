class AccountManagersController < ApplicationController
  before_action :set_account_manager, only: [:show, :edit, :update, :destroy]

  # GET /account_managers
  # GET /account_managers.json
  def index
    @account_managers = AccountManager.all
  end

  # GET /account_managers/1
  # GET /account_managers/1.json
  def show
  end

  # GET /account_managers/new
  def new
    @account_manager = AccountManager.new
  end

  # GET /account_managers/1/edit
  def edit
  end

  # POST /account_managers
  # POST /account_managers.json
  def create
    @account_manager = AccountManager.new(account_manager_params)

    respond_to do |format|
      if @account_manager.save
        format.html { redirect_to @account_manager, notice: 'Account manager was successfully created.' }
        format.json { render action: 'show', status: :created, location: @account_manager }
      else
        format.html { render action: 'new' }
        format.json { render json: @account_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_managers/1
  # PATCH/PUT /account_managers/1.json
  def update
    respond_to do |format|
      if @account_manager.update(account_manager_params)
        format.html { redirect_to @account_manager, notice: 'Account manager was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @account_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_managers/1
  # DELETE /account_managers/1.json
  def destroy
    @account_manager.destroy
    respond_to do |format|
      format.html { redirect_to account_managers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_manager
      @account_manager = AccountManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_manager_params
      params.require(:account_manager).permit(:code, :name, :joining_date)
    end
end
