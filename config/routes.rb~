Rails.application.routes.draw do
  
  root to: 'static_pages#home'
  
  get '/about' => 'static_pages#about'
  get '/mgmt' => 'static_pages#mgmt'
  get '/wb' => 'static_pages#wb'
  get '/support' => 'static_pages#support'
  get '/proxy_party'=> 'static_pages#proxy_party'
  
  devise_for :users
  
  resources :users
  resources :bids
  resources :coins
  resources :intersections
  resources :partners
  
end
