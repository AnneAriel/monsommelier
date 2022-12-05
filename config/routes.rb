Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :matches do
    resources :comments
    resources :wines
    resources :dishes, except: :index
    resources :bookmarks
    get "set_favorite", to: "matches#set_favorite"
  end

  resources :followers, except: :show

  resources :wines do
    resources :comments
    resources :bookmarks
    get "set_favorite", to: "wines#set_favorite"
    collection do
      get :search
    end
  end
  resources :dishes do
    resources :comments
    get "set_favorite", to: "dishes#set_favorite"
  end

  resources :bookmarks


end
