Rails.application.routes.draw do
  root 'entrances#index'
  resources :users
end
