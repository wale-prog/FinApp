Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :user do 
    resources :category do
      resources :expense
    end
  end
  root to: "home#index"
end
