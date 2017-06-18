Rails.application.routes.draw do
  get 'sessions/new'

	root 'static_pages#home'
	get  '/about',    to: 'static_pages#about'
  	get  '/faq',   to: 'static_pages#faq'
  	get  '/signup',  to: 'users#new'
  	post '/signup',  to: 'users#create'
  	get    '/login',   to: 'sessions#new'
  	post   '/login',   to: 'sessions#create'
  	delete '/logout',  to: 'sessions#destroy'
  	resources :users
end