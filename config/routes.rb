Rails.application.routes.draw do
  root 'landing#index'

  resources :inquires, only: [:create]

  devise_for :admins
end
