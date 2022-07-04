Rails.application.routes.draw do
  # get 'products', to: 'products#index'
  #get 'products/new', to: 'products#new', as: 'new_product'

  #get 'products/:id', to: 'products#show', as: :product

  #get 'products/:id/edit', to: 'products#edit', as: :edit_product
  #patch 'products/:id', to: 'products#update'


  #post 'products', to: 'products#create'

  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#welcome"
end
