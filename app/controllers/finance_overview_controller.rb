class FinanceOverviewController < ApplicationController
  before_action :authenticate_user!
  
  # GET /finance-overview
  def index
    json_response(success_response)
  end

  private
  
  def success_response
    {
      wallet_totals: wallet_totals
    }
  end

  def wallets
    @wallets ||= Wallet.where(user: current_user)
  end

  def wallet_totals
    @wallet_totals ||= wallets.map { |wallet| { id: wallet.id, name: wallet.name, current_balance: wallet.current_balance} }
  end
end
