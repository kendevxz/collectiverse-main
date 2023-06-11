Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'

  resources :categories

  resources :posts do
    resources :comments, only: :create, shallow: true do
      resources :subcomments, only: :create
    end
    match "like", action: :upvote, via: [:put,:delete], on: :member
    match "dislike", action: :downvote, via: [:put,:delete], on: :member
  end

  resources :toys, only: :index

  get '/profile', to: "pages#profile"

  resources :users

end
