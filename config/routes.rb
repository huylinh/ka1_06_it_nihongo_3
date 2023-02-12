Rails.application.routes.draw do
  devise_for :users
  root "product#show"
  
  get 'bill', to: 'bill#show'
  get 'cart', to: 'cart#show', as: 'cart_path'
  post 'cart/add', to: 'cart#add', as: 'add_to_cart'
  
end


