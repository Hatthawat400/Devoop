Rails.application.routes.draw do
  resources :inquires
  post '/send_text' , to: 'inquires#send_mail', as: '/send_text'
  devise_for :users
  get 'health/index'
  root "home#index"
  resources :logins
  

  resources :articles do
    resources :comments  
  end

  #api
  namespace :api do 
    resources :articles, only: [:index, :show]
  end 
end

