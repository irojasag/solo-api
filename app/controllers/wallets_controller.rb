class WalletsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_wallet, only: [:show, :update, :destroy]

  # GET /wallets
  def index
    @wallets = Wallet.where(user_id: current_user.id)
    json_response(@wallets)
  end

  # POST /wallets
  def create
    @wallet = Wallet.create!(wallet_params)
    json_response(@wallet, :created)
  end

  # GET /wallets/:id
  def show
    json_response(@wallet)
  end

  # PUT /wallets/:id
  def update
    @wallet.update(wallet_params)
    head :no_content
  end

  # DELETE /wallets/:id
  def destroy
    return render json: @wallet.errors, status: 422 unless @wallet.destroy
    head :no_content
  end

  private

  def wallet_params
    # whitelist params
    params.permit(:name, :initial_balance).merge(user: current_user)
  end

  def set_wallet
    @wallet = Wallet.where(user: current_user).find(params[:id])
  end
end

