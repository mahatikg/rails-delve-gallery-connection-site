Rails.application.routes.draw do

  get '/signin', to: 'sessions#new', as: 'signin'
  delete '/signout', to: 'sessions#destroy', as: 'signout'
  post '/sessions', to: 'sessions#create'

  get '/signup', to: 'registrations#new'
  post '/signup', to: 'registrations#create', as: 'registration'


  get '/welcome', to: 'sessions#welcome', as: 'welcome'
  get '/', to: 'sessions#welcome', as: 'root_url'

  resources :museums, only: [:show, :index]
  resources :galleries, only: [:show, :index]
  resources :artists
  resources :paintings

  # get 'artists/new', to: 'artists#new', as: 'new_artist'
  #
  # get '/artists/:id', to: 'artists#show', as: 'artist'
  #
  # post 'artists/create', to: 'artist#create'
  #
  # get 'artists/:id/edit', to: 'artists#edit', as: 'edit_artist'
  # post 'artists/:id/edit', to: 'artists#edit'
  #
  # patch 'artists/update', to: 'artist#update'
  #
  # get '/paintings/new', to: 'paintings#new', as: 'new_painting'
  # post '/paintings', to: 'paintings#create'
  #
  # get '/paintings', to: 'paintings#index'
  #
  # get '/paintings/:id', to: 'paintings#show', as: 'painting'
  #
  # get '/paintings/:id/edit', to: 'paintings#edit', as: 'edit_painting'
  # patch '/paintings/:id', to: 'paintings#update'
  #
  # get '/galleries', to: 'galleries#index', as: 'galleries'
  #
  # get 'galleries/:id', to: 'galleries#show', as: 'gallery'
  #
  # get '/museums', to: 'museums#index', as: 'museums'
  #
  # get '/museums/:id', to: 'museums#show', as: "museum"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
