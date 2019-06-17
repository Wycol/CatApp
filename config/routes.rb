Rails.application.routes.draw do
  root 'pages#index'
  resources :users, except: [:new] do
    member do
      post 'activate'
      post 'deactivate'
    end
  end
  resources :resources
  resources :missing_people
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  get '/resume', to: 'pages#resume'

  resources :form_fields, only: [:create, :update, :destroy]



  namespace :api do
    namespace :v1 do
      resources :users
      resources :missing_people
      resources :resources
      post 'login' => 'sessions#create'
      post 'logout' => 'sessions#destroy'
    end
  end
end
