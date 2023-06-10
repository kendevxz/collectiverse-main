Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'

  resources :categories

  resources :posts do
    resources :comments, only: :create, shallow: true do
      resources :subcomments, only: :create
    end
  end

  resources :toys, only: :index

  # get 'pages/about'
  get '/profile', to: "pages#profile"

  resources :users, only: [:show]
end
