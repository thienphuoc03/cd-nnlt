Rails.application.routes.draw do
  resources :book_managements
  get 'home/top'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'header' => 'home#header'
end
