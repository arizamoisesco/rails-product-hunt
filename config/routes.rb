Rails.application.routes.draw do
  get 'products', to: 'products#index'
  get 'products/new', to: 'products#new', as: 'new_product'

  post 'products', to: 'products#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#welcome"
end
