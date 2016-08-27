Rails.application.routes.draw do
  get 'sessions/welcome', to: 'sessions#welcome', as: 'welcome'

  # get 'sessions/new'
  #
  # get 'sessions/create'
  #
  # get 'sessions/destroy'
  #
  # get 'artists/new'
  #
  # get 'artists/index'
  #
  get '/artists/:id', to: 'artists#show', as: 'artist'
  #
  # get 'artists/create'
  #
  # get 'artists/edit'
  #
  # get 'artists/update'
  #
  # get 'artists/delete'
  #
  # get 'paintings/new'
  #
  #get '/paintings', to: 'paintings#index', as: 'paintings'
  #
  get '/paintings/:id', to: 'paintings#show', as: 'painting'
  #
  # get 'paintings/create'
  #
  # get 'paintings/edit'
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
