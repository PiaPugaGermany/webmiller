Rails.application.routes.draw do
  get 'orders/create'

  resources :products do
    resources :orders, only: :create
  end

  resources :orders, only: :index

  devise_for :users, controllers: {
    registrations: "users/registrations"
  }

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'

  get 'aboutus', to:'pages#aboutus'
  # get 'pages/aboutus'
end
