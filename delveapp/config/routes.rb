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
  # get 'artists/show'
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
  # get 'paintings/index'
  #
  # get 'paintings/show'
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
  # get 'galleries/show'

  get '/museums', to: 'museums#index', as: 'museums'

  get '/museums/:id', to: 'museums#show', as: "museum"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
