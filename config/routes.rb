Rails.application.routes.draw do
  get '/works', to: 'static_pages#works'
  get '/about', to: 'static_pages#about'
  get 'contacts', to: 'static_pages#contacts'
  get 'static_pages/about'

  get 'static_pages/contacts'

  root 'articles#index'

  resources :articles do
    resources :comments
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :admins
end
