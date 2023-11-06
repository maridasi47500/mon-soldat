Rails.application.routes.draw do
  get 'forgot', to: "forgot#index"
  post 'forgot', to: "forgot#reset"
  resources :abdos
  resources :cardios
  resources :exercises
  get 'entrainement/aujourdhui', as: :entraineajd
  resources :weapons
  resources :cities
  resources :galons
  resources :soldiers
  resources :comments
  get "my-posts/:title", to: "cats#showcat", as: :mycat
  resources :posts
  resources :cats
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  get 'bycar/index'
  get 'boat/page1'
  root 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
