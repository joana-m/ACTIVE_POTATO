Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/form', to: 'pages#form'
  resources :friendships, only: [:index]
  # destroy '/friends', to: 'pages#friends'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events do
    resources :user_events, only: [:create, :destroy]
  end
  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: [:create, :destroy]
  end


  resources :users, only: [:show]
  resources :profiles, only: [:show]

  resources :users, only: [] do
    resources :friendships, only: [:create]
    delete "/unfriend", to: "friendships#destroy"
    resources :chatrooms, only: [:create]
  end
end
