Rails.application.routes.draw do

  resources :categories
  resources :products
  resources :foodgroups

  root "categories#index"
end
