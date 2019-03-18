Rails.application.routes.draw do
  resources :vendors
  resources :expenses
  resources :customers
  resources :dispatches
  resources :drivers
  resources :vehicles
  resources :microposts
  resources :users

  get 'sessions/new'
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

  get "/reports", to: "reports#home"
  get "/reports/vehicle-performance", to: "reports#vehicle_performance", as: "vehicle_performance"



  
end
