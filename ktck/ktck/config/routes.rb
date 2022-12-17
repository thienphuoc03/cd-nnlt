Rails.application.routes.draw do
  resources :sea_fishes
  root to: 'pages#home'
  # root to: 'students#index'

  get '/', to: 'pages#home', as: 'home'

  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
