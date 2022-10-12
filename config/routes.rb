Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :user do 
    resources :category do
    end
  end

  resources :expense

  authenticated(:user) do
    root to: 'category#index', as: :authenticated_root
  end
  unauthenticated(:user) do
    root 'home#index'
  end

end
