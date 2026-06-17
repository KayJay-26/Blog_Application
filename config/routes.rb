Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:create, :destroy]
    resource :like, only: [:create, :destroy]
  end

  devise_for :users

  root "posts#index"

  get "/profiles/:id", to: "profiles#show", as: :profile

  get "up" => "rails/health#show", as: :rails_health_check
  get "/env_check", to: "application#env_check"
  get "/users_count", to: "application#users_count"
  get "/smtp_test", to: "application#smtp_test"
end