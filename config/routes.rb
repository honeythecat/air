Rails.application.routes.draw do
  devise_for :users
  resources :rentals
  root :to => 'rentals#index'

end
