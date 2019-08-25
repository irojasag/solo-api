class Wallet < ApplicationRecord
  belongs_to :user
  has_many :transactions

  def current_balance
    initial_balance
  end
end
