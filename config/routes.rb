Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  
  get 'cart', to: 'cart#show', as: 'cart_path'
  post 'cart/add', to: 'cart#add', as: 'add_to_cart'
  
end


