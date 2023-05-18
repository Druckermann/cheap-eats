Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/choice", to: "pages#choice"
  resources :favorites, only: :index
  resources :recipes, only: [:index, :show, :new, :create, :update] do
    member do
      post :toggle_favorite, controller: 'favorites'
    end
  end
  resources :deals, only: [:index, :show, :new, :create]
end
