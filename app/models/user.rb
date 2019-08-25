class User < ActiveRecord::Base
  extend Devise::Models
  devise :database_authenticatable, 
         :registerable,
        #  :recoverable, 
        #  :rememberable, 
        #  :trackable,  
        #  :validatable, 
         :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_many :wallets
end