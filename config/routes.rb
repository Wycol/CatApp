Rails.application.routes.draw do
  root 'pages#index'
  resources :users
  
  namespace :api do
    namespace :v1 do
      resources :users
      resources :missing_people
    end
  end
end
