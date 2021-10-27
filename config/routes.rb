Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :update]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
  resources :pets, only: [:index, :destroy, :create]
  resources :scores, only: [:create]
  get '/high_scores', to: 'scores#high_scores'
  resources :adventures, only: [:create, :destroy]
  # resources :adventures, only: [:index, :destroy, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
