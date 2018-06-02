Rails.application.routes.draw do


  root 'songs#index'

  
  get '/about', to: 'static_pages#about'

  
  
  get '/signup', to: 'users#new'
  
  
  resources :songs
  
  resources :users
  
  post '/signup',  to: 'users#create'
  
  
end