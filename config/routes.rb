Rails.application.routes.draw do
  resources :comments
  resources :ingredients
  resources :directions
  resources :recipes
  resources :users
  root to: 'pages#home'
end
