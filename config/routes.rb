Rails.application.routes.draw do
  get 'home/index'
  resources :users
  # get '/profile' => 'users#profile'  this is for if I want a separate profile page
  resources :posts
  resources :sessions, except: [:destroy]
  delete '/sessions' => 'sessions#destroy', as: :logout
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'home#index'  
end