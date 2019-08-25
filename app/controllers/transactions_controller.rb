class TransactionsController < ApplicationController
  before_action :authenticate_user!
  
  # GET /transactions
  def index
    #json_response(.includes(:wallet))
    render json: Transaction.where(wallet: current_user.wallets.pluck(:id)).order('date DESC'), include: [:wallet]
  end
end
