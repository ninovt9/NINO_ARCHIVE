Rails.application.routes.draw do
  
  get 'engineering/new'

  get 'engineering/show'

  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get '/home',      to: 'static_pages#home'
  get '/help',      to: 'static_pages#help'
  get '/about',     to: 'static_pages#about'
  get '/contact',   to: 'static_pages#contact'
  get '/signup',    to: 'users#new'
  get '/login',     to: 'sessions#new'
  post'/login',     to: 'sessions#create'
  delete'/logout',  to: 'sessions#destroy'
  
  get '/new_project',  to: "projects#new"
  post '/new_project', to: "projects#create"
  
  resources :users
  resources :projects
  
end
