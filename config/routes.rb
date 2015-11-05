Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  resources :nominees

  get "/home", to: 'nominees#index', as: :user_root
  root to: "nominees#show"
end
