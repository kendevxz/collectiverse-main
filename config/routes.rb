Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'
  get '/profile', to: "pages#profile"

  resources :categories
  resources :users, only: [:show, :edit, :update]
  resources :toys, only: :index
  resources :posts do
    resources :comments, only: :create, shallow: true do
      resources :subcomments, only: :create
    end
    put "like", action: :upvote, via: [:put,:delete], on: :member
    put "dislike", action: :downvote, via: [:put,:delete], on: :member
  end
end
