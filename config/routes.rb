Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/create'
  get 'password_resets/edit'
  get 'password_resets/update'
  devise_for :users

  root 'pages#home'
  get '/profile', to: "pages#profile"
  get '/karma', to: "pages#karma"
  get '/about', to: "pages#about"

  get '/password/reset', to: 'password_resets#new'
  post '/password/reset', to: 'password_resets#create'
  get '/password/reset/edit', to: 'password_resets#edit'
  patch '/password/reset/edit', to: 'password_resets#update'

  resources :categories
  resources :users, only: [:show, :edit, :update]
  resources :toys, only: :index
  get "toys/:id/release_date", to: "toys#release_date", as: :release_date
  resources :posts do
    resources :comments, only: :create, shallow: true do
      resources :subcomments, only: :create
    end
    put "like", action: :upvote, via: [:put,:delete], on: :member
    put "dislike", action: :downvote, via: [:put,:delete], on: :member
  end

  get 'set_theme', to: 'theme#update'
end
