Rails.application.routes.draw do

  # Devise (home)
  devise_for :users
  get 'home/index'
  root 'home#index'

  # Teams
  get '/teams' => 'teams#index', as: 'teams'
  get '/teams/new' => 'teams#new', as: 'new_team'
  post '/teams' => 'teams#create'
  get '/teams/:id' => 'teams#show', as: 'team'
  get '/teams/:id/edit' => 'teams#edit', as: 'edit_team'
  patch '/teams/:id' => 'teams#update'
  delete '/teams/:id' => 'teams#destroy'

  # Players
  get '/players' => 'players#index', as: 'players'
  get '/players/new' => 'players#new', as: 'new_player'
  post '/players' => 'players#create'
  get '/players/:id' => 'players#show', as: 'player'
  get '/players/:id/edit' => 'players#edit', as: 'edit_player'
  patch '/players/:id' => 'players#update'
  delete '/players/:id' => 'players#destroy'

  # Teams & Players association
  get '/teams/:team_id/players' => 'players#index', as: 'team_players'
  get '/teams/:team_id/players/new' => 'players#create', as: 'new_team_player'
  post '/parks/:park_id/rangers' => 'rangers#create'
  
end