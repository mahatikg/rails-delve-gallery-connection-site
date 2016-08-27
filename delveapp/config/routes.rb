Rails.application.routes.draw do
  get '/welcome', to: 'sessions#welcome', as: 'welcome'

  # get 'sessions/new'
  #
  # get 'sessions/create'
  #
  # get 'sessions/destroy'
  #
  get 'artists/new', to: 'artists#new', as: 'new_artist'
  #
  # get 'artists/index'
  #
  get '/artists/:id', to: 'artists#show', as: 'artist'
  #
  post 'artists/create', to: 'artist#create'
  #
  get 'artists/:id/edit', to: 'artists#edit', as: 'edit_artist'
  post 'artists/:id/edit', to: 'artists#edit'
  #
  patch 'artists/update', to: 'artist#update'
  #
  # get 'artists/delete'
  #
  get '/paintings/new', to: 'paintings#new', as: 'new_painting'
  post '/paintings', to: 'paintings#create'
  #
  get '/paintings', to: 'paintings#index'
  #
  get '/paintings/:id', to: 'paintings#show', as: 'painting'
  #
  # get 'paintings/create'
  #
  get '/paintings/:id/edit', to: 'paintings#edit', as: 'edit_painting'
  patch '/paintings/:id', to: 'paintings#update'
  #
  # get 'paintings/update'
  #
  # get 'paintings/delete'
  #
  get '/galleries', to: 'galleries#index', as: 'galleries'
  #
  get 'galleries/:id', to: 'galleries#show', as: 'gallery'

  get '/museums', to: 'museums#index', as: 'museums'

  get '/museums/:id', to: 'museums#show', as: "museum"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
