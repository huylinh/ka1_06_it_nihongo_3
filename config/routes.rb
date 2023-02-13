Rails.application.routes.draw do

  devise_for :users
  root  "product#index"

  get 'bill', to: 'bill#show' # /bill
  post 'bill', to: 'bill#create'
  
  get 'cart', to: 'cart#show', as: 'cart'
  post 'cart', to: 'cart#add', as: 'add_to_cart'
  patch 'cart/:product_id', to: 'cart#edit_quantity', as: 'edit_quantity_cart'
  delete 'cart/:product_id', to: 'cart#delete', as: 'delete_product_cart'

end


