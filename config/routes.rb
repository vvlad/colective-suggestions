Rails.application.routes.draw do
  devise_for :users
  root to: 'nominees#show'

  resources :nominees
end
