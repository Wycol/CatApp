Rails.application.routes.draw do
  root 'sessions#new'
  resources :users, except: [:new]
  get '/index', to: 'pages#index'
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'




  namespace :api do
    namespace :v1 do
      resources :users
      resources :missing_people
      resources :resources
    end
  end
end
