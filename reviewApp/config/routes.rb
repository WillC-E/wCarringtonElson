Rails.application.routes.draw do
  get 'sessions/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'reviews/index'
  get 'reviews/new'
  get 'reviews/show'
  get 'reviews/create'
  get 'reviews/edit'
  get 'products/index'
  get 'products/new'
  get 'products/show'
  get 'products/create'
  get 'products/edit'
  get 'users/index'
  get 'users/new'
  get 'users/show'
  get 'users/create'
  get 'users/edit'
  get 'profiles/index'
  get 'profiles/new'
  get 'profiles/show'
  get 'profiles/create'
  get 'profiles/edit'
  get 'static_pages/home'
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'

  resources :profiles
  resources :users
  resources :sessions
  resources :products
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
