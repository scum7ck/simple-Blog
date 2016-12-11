Rails.application.routes.draw do
  get 'static_pages/works'

  get 'static_pages/about'

  get 'static_pages/contacts'

  resources :dragonfly_images
  root 'articles#index'

  get '/signup', to: 'admin#new'

  resources :articles do
    resources :comments
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :admins
end
