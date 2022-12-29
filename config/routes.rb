Rails.application.routes.draw do
  resources :recipes
 # root 'users#index'
 root 'recipes#index'
 devise_for :users
  
  resources :users do
   resources :recipes
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
