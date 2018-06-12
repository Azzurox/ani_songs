Rails.application.routes.draw do


  get '/login', to: 'sessions#new'
  
  post '/login', to: 'sessions#create'
  
  delete '/logout', to: 'sessions#destroy'

  root 'songs#index'

  
  get '/about', to: 'static_pages#about'

  
  
  get '/signup', to: 'users#new'
  
  
  resources :songs
  
  resources :songs do
    member do
	  put "like" => "songs#upvote"
	end
  end
  
  resources :users
  
  post '/signup',  to: 'users#create'
  
  
end