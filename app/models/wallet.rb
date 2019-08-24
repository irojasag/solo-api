class Wallet < ApplicationRecord
  belongs_to :user

  def current_balance
    initial_balance
  end
end
