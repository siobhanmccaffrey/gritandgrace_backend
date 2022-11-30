Rails.application.routes.draw do

  get "/me", to: "users#me"
  post "/auth/login", to: "auth#login"
  
  resources :meetings
  resources :package_availabilities
  resources :packages
  resources :availabilities
  resources :users, only: [:index, :create, :update, :show]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
