Rails.application.routes.draw do

  devise_for :users
  root  "product#index"

  post 'product', to: 'product#add_cart'

  get 'bill', to: 'bill#show' # /bill
  post 'bill', to: 'bill#create'

  get 'history_bills', to: 'bill#show_history'
  get "/history_bills/:id", to: "bill#showbilldetails"
  
  get 'cart', to: 'cart#show', as: 'cart'
  post 'cart', to: 'cart#add', as: 'add_to_cart'
  patch 'cart/:product_id', to: 'cart#edit_quantity', as: 'edit_quantity_cart'
  delete 'cart/:product_id', to: 'cart#delete', as: 'delete_product_cart'

end


