Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :photos
  resources :two_wheelers
end
