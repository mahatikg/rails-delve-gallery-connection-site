Rails.application.routes.draw do
  get 'sessions/welcome', to: 'sessions#welcome', as: 'welcome'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'artists/new'

  get 'artists/index'

  get 'artists/show'

  get 'artists/create'

  get 'artists/edit'

  get 'artists/update'

  get 'artists/delete'

  get 'paintings/new'

  get 'paintings/index'

  get 'paintings/show'

  get 'paintings/create'

  get 'paintings/edit'

  get 'paintings/update'

  get 'paintings/delete'

  get 'galleries/index'

  get 'galleries/show'

  get 'museums/index', to: 'museums#index', as: 'museums'

  get 'museums/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
