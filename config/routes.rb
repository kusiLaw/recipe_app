Rails.application.routes.draw do
  # resources :recipes
 # root 'users#index'
 root 'recipes#public_recipes'
 get  'public_recipes', to: 'recipes#public_recipes'
 
  devise_for :users
  resources :recipes

  resources :users do
   resources :recipes
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
