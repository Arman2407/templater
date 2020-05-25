class CounterpartiesController < CustomerController
  before_action :set_counterparty, only: [:show, :edit, :update, :destroy]

  # GET /counterparties
  # GET /counterparties.json
  def index
    @counterparties = current_user.counterparties
  end

  # GET /counterparties/1
  # GET /counterparties/1.json
  def show
  end

  # GET /counterparties/new
  def new
    @counterparty = Counterparty.new
  end

  # GET /counterparties/1/edit
  def edit
  end

  # POST /counterparties
  # POST /counterparties.json
  def create
    @counterparty = Counterparty.new(counterparty_params)
    @counterparty.owner = current_user

    respond_to do |format|
      if @counterparty.save
        format.html { redirect_to @counterparty, notice: "Counterparty was successfully created." }
        format.json { render :show, status: :created, location: @counterparty }
      else
        format.html { render :new }
        format.json { render json: @counterparty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /counterparties/1
  # PATCH/PUT /counterparties/1.json
  def update
    respond_to do |format|
      if @counterparty.update(counterparty_params)
        format.html { redirect_to @counterparty, notice: "Counterparty was successfully updated." }
        format.json { render :show, status: :ok, location: @counterparty }
      else
        format.html { render :edit }
        format.json { render json: @counterparty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /counterparties/1
  # DELETE /counterparties/1.json
  def destroy
    @counterparty.destroy
    respond_to do |format|
      format.html { redirect_to counterparties_url, notice: "Counterparty was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_counterparty
    @counterparty = Counterparty.find(params[:id])
    @bank_accounts = @counterparty.bank_accounts
  end

  # Only allow a list of trusted parameters through.
  def counterparty_params
    params.require(:counterparty).permit(:company_full_name, :company_short_name, :signatory_person, :signatory_person_genitive, :signatory_basis, :signatory_basis_genitive, :inn, :kpp, :ogrn, :legal_address, :real_address, :post_address, :phone, :email)
  end
end
