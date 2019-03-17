Rails.application.routes.draw do
  resources :drivers
  resources :vehicles
  get 'sessions/new'
  resources :users
  get 'users/new'
  root "static_pages#home"
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'auth#signup'
  post '/signup', to: 'auth#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'

  resources :microposts
end
