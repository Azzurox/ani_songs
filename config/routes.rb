Rails.application.routes.draw do

  get 'users/new'

  root 'songs#index'

  
  get '/about', to: 'static_pages#about'

  
  
  get '/signup', to: 'users#new'
  
  
  resources :songs
  
  resources :users
  
  
end