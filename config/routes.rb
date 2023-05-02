Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/choice", to: "pages#choice"
  resources :recipes, only: [:index, :show]
  resources :deals, only: [:index, :show, :new, :create]
end
