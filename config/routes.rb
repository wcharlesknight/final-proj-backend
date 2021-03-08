Rails.application.routes.draw do

  resources :player_ranks
  resources :ranks
  resources :game_letters
  resources :scores
  resources :games
  resources :letters
  resources :users
  resources :multi_games 
  resources :multi_scores 
  resources :players 

  get '/score/:character', to: 'letters#score'
  # for login/signup/auth 
  post '/sign_up', to: 'users#create'
  post '/login', to: 'auth#create'
  get '/persist', to: 'auth#show'
  get '/highscore/:id', to: 'users#high_scores'
  get '/leaders', to: 'games#leaders'
  post '/one', to: 'multi_games#player_one'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
end
