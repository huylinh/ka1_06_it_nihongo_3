Rails.application.routes.draw do

  devise_for :users
  root  "product#index"

  get 'bill', to: 'bill#show' # /bill
  post 'bill', to: 'bill#create'
  get 'cart', to: 'cart#show', as: 'cart_path'
  post 'cart/add', to: 'cart#add', as: 'add_to_cart'
  get 'history_bills', to: 'bill#show_history'
  get "/history_bills/:id", to: "bill#showbilldetails"
end


