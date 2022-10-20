Rails.application.routes.draw do
  devise_for :users
  root "recipes#public_recipes"
  get "/public_recipes", to: "recipes#public_recipes"
  get '/shopping_list', to: 'shopping_list#index', as: 'shopping_list'
  post 'toggle_public', to: 'recipes#toggle', as: 'toggle_public'
  resources :users do
  resources :recipes, only: %i[index show new create destroy] do
    resources :recipe_foods, only: %i[create destroy]
  end
end
  resources :foods, only: %i[index show new create destroy] do
  resources :recipe_foods, only: %i[create destroy]
  end
<<<<<<< HEAD
=======

  root 'foods#index'
  resources :foods, only: [:index, :new, :create, :destroy]
  resources :recipe_foods, only: [:index, :show]
  # Defines the root path route ("/")
  # root "articles#index"
>>>>>>> 205037de58e1c879066dad423d45d4d6b36df6ac
end
