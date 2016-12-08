Rails.application.routes.draw do
  
  get '/signup', to: 'admin#new'

  resources :articles do
    resources :comments
  end

  root 'articles#index'
end
