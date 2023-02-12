Rails.application.routes.draw do
  get 'invoice/show'
  # devise_for :users
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: "home#index"
  
  # invoice
  get '/invoice/', to: 'invoice#show'
  
end
