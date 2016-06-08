Rails.application.routes.draw do

  devise_for :users
  resources :categories
  resources :products
  resources :foodgroups

  root "categories#index"
end
