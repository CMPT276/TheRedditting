Rails.application.routes.draw do
  root   'static_pages#home'
  #get    '/preferences',    to: 'static_pages#preference'
  get    '/faq',    to: 'static_pages#faq'
  get    '/about',   to: 'static_pages#about'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/preference',   to: 'users#set_preferences'
  resources :users
  resources :subreddits
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
