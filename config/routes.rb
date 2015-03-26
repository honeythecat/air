Rails.application.routes.draw do
  devise_for :users
  root :to => 'rentals#index' 

  resources :rentals

end
