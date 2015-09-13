Rails.application.routes.draw do
  
  root to: 'static_pages#home'
  
  get '/about' => 'static_pages#about'
  get '/wb' => 'static_pages#wb'
  get '/support' => 'static_pages#support'
  get '/proxy_party'=> 'static_pages#proxy_party'
  get '/partners' => 'static_pages#partners'
  
  devise_for :users
  
  resources :users
  resources :bids
  resources :streets
  resources :coins
  
end
