Rails.application.routes.draw do

  get '/newsong', to: 'songs#new'

  root 'songs#index'

  get '/about', to: 'static_pages#about'

  resources :songs
  
end