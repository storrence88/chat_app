Rails.application.routes.draw do
  require 'sidekiq/web'
  
  mount Sidekiq::Web => '/sidekiq'

  devise_for :users
  
  resources :chatrooms do
    resource :chatroom_users
    resources :messages
  end

  root 'chatrooms#index'
end
