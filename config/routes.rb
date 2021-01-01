Rails.application.routes.draw do

  devise_for :users
  get 'rooms/index'
  root to: "users#index"
  resources :users, only: :new

end
 