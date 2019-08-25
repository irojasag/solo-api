class Wallet < ApplicationRecord
  belongs_to :user
  has_many :transactions
  before_destroy :before_destroy, prepend: true


  def current_balance
    initial_balance
  end


  def before_destroy
    puts "LOOOOL"
    cannot_delete_with_transactions
    throw(:abort) if errors.present?
  end

  def cannot_delete_with_transactions
    errors.add(:base, 'Cannot delete wallet with transactions') if transactions.any?
  end
end
