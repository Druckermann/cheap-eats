Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/choice", to: "pages#choice"
  get 'favourites', to: 'recipes#favourites'
  resources :recipes, only: [:index, :show, :new, :create, :update]
  resources :deals, only: [:index, :show, :new, :create]
end
