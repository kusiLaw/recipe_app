Rails.application.routes.draw do
  # resources :recipes
 # root 'users#index'
 root 'recipes#public_recipes'
 get  'public_recipes', to: 'recipes#public_recipes'
 get  'general_shopping_list', to: 'foods#shopping_list'

  devise_for :users
  resources :recipes do 
   resources :recipe_foods
  end
  resources :foods
  resources :users  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
