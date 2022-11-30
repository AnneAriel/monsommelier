Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :matches do
    resources :comments
    resources :wines do
      resources :bookmarks
    end
    resources :dishes, except: :index
  end

  resources :followers, except: :show
  resources :wines do
    resources :comments
  end
  resources :dishes do
    resources :comments
  end
end
