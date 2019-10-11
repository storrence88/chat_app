Rails.application.routes.draw do
  resources :chatrooms
  devise_for :users
  root 'main#index'
end
