Rails.application.routes.draw do
  
  devise_for :installs
  root to: 'static_pages#home'
  
  get '/about' => 'static_pages#about'
  get '/crowdfund' => 'static_pages#crowdfund'
  get '/mgmt' => 'static_pages#mgmt'
  get '/wb' => 'static_pages#wb'
  get '/support' => 'static_pages#support'
  get '/proxy_party'=> 'static_pages#proxy_party'
  
  
  
  resources :users
  resources :bids
  resources :coins
  resources :intersections
  resources :partners
  
end
