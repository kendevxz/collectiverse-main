Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # devise_for :users

  resources :categories do
    collection do
      get 'search'
    end
    resources :posts, only: [:new, :create, :show, :edit] do
      collection do
        get 'search'
      end
    end
  end

  # get 'pages/about'
  # get 'pages/contact'
end
