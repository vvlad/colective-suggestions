Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }


  get '/home', to: 'users#show', as: :user_root
  root to: "nominees#show"
end
