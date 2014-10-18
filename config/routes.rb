Rails.application.routes.draw do
  root to: 'bids#index'
  devise_for :users
  resources :users
  resources :bids
end
