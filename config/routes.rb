Rails.application.routes.draw do
  get 'home/index'
  resources :users
  # get '/profile' => 'users#profile'  this is for if I want a separate profile page
  resources :posts
  resources :sessions, except: [:destroy]
  delete '/sessions' => 'sessions#destroy', as: :logout
  resources :comments
	root 'home#index'  
end