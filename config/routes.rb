Rails.application.routes.draw do
  devise_for :users 
  root "recipes#public_recipes" 
  get "/public_recipes", to: "recipes#public_recipes"
  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy' 
  end
end
