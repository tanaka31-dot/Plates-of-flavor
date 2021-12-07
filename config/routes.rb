Rails.application.routes.draw do
  resources :ingredients
  resources :directions
  resources :recipes
  resources :users
  root to: 'pages#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  post '/like_recipe/:user_id/:recipe_id', to: 'likes#like_recipe', as: 'like_recipe'
  delete '/unlike_recipe/:user_id/:recipe_id', to: 'likes#unlike_recipe', as: 'unlike_recipe'

end
