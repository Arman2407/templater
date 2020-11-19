class BankAccountsController < ApplicationController
  before_action :find_accountable
  before_action :set_bank_account, only: [:show, :edit, :update, :destroy]

  # GET /bank_accounts
  # GET /bank_accounts.json
  def index
    @bank_accounts = @accountable.bank_accounts
  end

  # GET /bank_accounts/1
  # GET /bank_accounts/1.json
  def show
  end

  # GET /bank_accounts/new
  def new
    @bank_account = BankAccount.new
  end

  # GET /bank_accounts/1/edit
  def edit
  end

  # POST /bank_accounts
  # POST /bank_accounts.json
  def create
    @bank_account = BankAccount.new(bank_account_params)
    @bank_account.accountable = @accountable
    set_active

    respond_to do |format|
      if @bank_account.save
        format.html { redirect_to polymorphic_path([@accountable, @bank_account]), notice: "Bank account was successfully created." }
        format.json { render :show, status: :created, location: @bank_account }
      else
        format.html { render :new }
        format.json { render json: @bank_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bank_accounts/1
  # PATCH/PUT /bank_accounts/1.json
  def update
    respond_to do |format|
      if @bank_account.update(bank_account_params)
        set_active
        format.html { redirect_to polymorphic_path([@accountable, @bank_account]), notice: "Bank account was successfully updated." }
        format.json { render :show, status: :ok, location: @bank_account }
      else
        format.html { render :edit }
        format.json { render json: @bank_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bank_accounts/1
  # DELETE /bank_accounts/1.json
  def destroy
    @bank_account.destroy
    respond_to do |format|
      format.html { redirect_to polymorphic_path([@accountable]), notice: "Bank account was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def find_accountable
    @accountable = if params[:business_id].present?
      Business.find params[:business_id]
    elsif params[:counterparty_id].present?
      Counterparty.find params[:counterparty_id]
    end
  end

  def set_active
    if @bank_account.active?
      @accountable.bank_accounts.where.not(id: @bank_account.id).each { |ba| ba.update_attribute(:active, false) }
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_bank_account
    @bank_account = BankAccount.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def bank_account_params
    params.require(:bank_account).permit(:accountable_id, :active, :bank_name, :bank_bik, :kor_account_num, :account_num)
  end
end
