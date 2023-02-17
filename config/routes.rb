Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  resources :groups, only: [:index, :new, :create] do
    resources :transacs, only: [:index]
  end

  resources :transacs, only: [:new, :create]
end
