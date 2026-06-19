Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:create, :destroy]
    resource :like, only: [:create, :destroy]
  end

  devise_for :users

  root "posts#index"

  get "/profiles/:id", to: "profiles#show", as: :profile

  get "up" => "rails/health#show", as: :rails_health_check
end