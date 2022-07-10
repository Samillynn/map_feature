Rails.application.routes.draw do
  resources :users
  resources :markers do
    resources :reports, only: [:index]
  end
  resources :reports, except: [:index]
  resources :images
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
