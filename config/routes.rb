Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :wallets
  resources :finance_overview
  resources :transactions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
