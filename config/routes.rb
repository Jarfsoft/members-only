Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, :only => [:new, :create, :index]
  resources :users
  root 'posts#index'
  #devise_for :user
end
