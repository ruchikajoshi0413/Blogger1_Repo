Rails.application.routes.draw do
    get 'welcomes/index'
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root 'welcomes#index'
  # root "articles#index"
  resources :articles do
    resources :comments
  end
  resources :tags
  resources :taggings
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'

  resources :users, except: :show

end
