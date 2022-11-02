Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users
      post '/auth/login', to: 'authentication#login'

      resources :vehicles

      resources :reservations
      get '/all_reservations', to: 'reservations#all_reservations'
    end
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
