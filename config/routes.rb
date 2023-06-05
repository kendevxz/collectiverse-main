Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'

  resources :categories do
    collection do
      get 'search'
    end
    resources :posts, only: %i[new create show edit] do
      collection do
        get 'search'
      end
      resources :comments, only: %i[new create] do
        resources :subcomments, only: %i[new create]
      end
    end
  end

  # get 'pages/about'
  # get 'pages/contact'
end
