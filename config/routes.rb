Rails.application.routes.draw do

  resources :player_ranks
  resources :ranks
  resources :game_letters
  resources :scores
  resources :games
  resources :letters
  resources :users

  get '/score/:character', to: 'letters#score'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
