Rails.application.routes.draw do
  resources :galons
  resources :soldiers
  resources :comments
  get "my-posts/:title", to: "cats#showcat", as: :mycat
  resources :posts
  resources :cats
  devise_for :users
  get 'bycar/index'
  get 'boat/page1'
  root 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
