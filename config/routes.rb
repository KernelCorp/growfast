Rails.application.routes.draw do
  root 'landing#index'

  resources :inquires, only: [:create]
end
