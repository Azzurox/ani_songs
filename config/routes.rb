Rails.application.routes.draw do
  get 'songs/new'

  root 'songs#show'

  get '/about', to: 'static_pages#about'

end