Rails.application.routes.draw do
  root 'songs#home'

  get '/about', to: 'static_pages#about'

end