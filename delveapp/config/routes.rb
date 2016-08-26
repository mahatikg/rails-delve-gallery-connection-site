Rails.application.routes.draw do
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

  get 'museums/index'

  get 'museums/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
