Rails.application.routes.draw do

  resources :categories
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # get 'users/show'

  # get 'orders/create'
  resources :orders, only: [:create, :destroy]

  resources :products do
    resources :orders, only: :create
  end

  resources :orders, only: :index

  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks:'users/omniauth_callbacks'
  }
  resource :users, only: [:show]
  resources :posts do
      resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#aboutus'
  # get 'aboutus', to:'pages#aboutus'
  # get 'pages/aboutus'
end
