Rails.application.routes.draw do
  get 'aboutus', to:'pages#aboutus'
  # get 'pages/aboutus'

  resources :products
  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'

end
