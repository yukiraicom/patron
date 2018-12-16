Rails.application.routes.draw do
  devise_for :users
  root 'entrances#index'
  resources :users
  post '/search', to: 'users#search'
end
