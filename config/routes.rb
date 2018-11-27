Rails.application.routes.draw do
  resources :users
  root 'entrances#index'
end
