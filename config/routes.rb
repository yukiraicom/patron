Rails.application.routes.draw do
  devise_for :users
  root 'entrances#index'
  resources :users
end
