Rails.application.routes.draw do
  devise_for :users, controllers: {
    message: 'users/message'
  }
# devise custom routes tomorrow

  root 'pages#home'

  get 'rooms/index'
  get 'password_resets/new'
  get 'password_resets/create'
  get 'password_resets/edit'
  get 'password_resets/update'

  get '/password/reset', to: 'password_resets#new'
  post '/password/reset', to: 'password_resets#create'
  get '/password/reset/edit', to: 'password_resets#edit'
  patch '/password/reset/edit', to: 'password_resets#update'

  resources :rooms do
    resources :messages
  end

  resources :categories

  resources :users, only: [:show, :edit, :update, :message]

  resources :chatrooms, only: :show do # Maybe nest it under users after chatroom setup
    resources :messages, only: :create
  end

  resources :posts do
    resources :comments, only: :create, shallow: true
    put "like", action: :upvote, via: [:put,:delete], on: :member
    put "dislike", action: :downvote, via: [:put,:delete], on: :member
  end

  get 'set_theme', to: 'theme#update'
end
