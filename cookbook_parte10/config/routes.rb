Rails.application.routes.draw do
  root to: 'recipes#index'
  resources :recipes
  resources :recipe_types
  resources :cuisines
end
