class Transaction < ApplicationRecord
  belongs_to :wallet
  enum transaction_type: %i[income expense]
end
