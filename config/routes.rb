Rails.application.routes.draw do
  get 'sessions/index'

  get 'sessions/show'

  get 'sessions/create'

  get 'sessions/edit'

  get 'sessions/destroy'

  get 'sessions/update'

  get 'sessions/new'

  get 'posts/index'

  get 'posts/new'

  get 'posts/create'

  get 'posts/show'

  get 'posts/edit'

  get 'posts/update'

  get 'posts/destroy'

  get 'users/index'

  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
