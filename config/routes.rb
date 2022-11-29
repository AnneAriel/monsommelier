Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :matches do
    resources :wines do
      resources :bookmarks
    end
    resources :dishes, except: :index
  end

  resources :comments
  resources :followers, except: :show
  resources :wines
  resources :dishes

end
