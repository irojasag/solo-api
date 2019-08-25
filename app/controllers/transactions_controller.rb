class TransactionsController < ApplicationController
  before_action :authenticate_user!
  
  # GET /transactions
  def index
    json_response(current_user.wallets.map{|t| t.transactions}.flatten)
  end
end
