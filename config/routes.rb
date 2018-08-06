Rails.application.routes.draw do
  root 'static_pages#home'
  get '/signup', to: 'users#new', as: 'signup'
  get  '/home',  to: 'static_pages#home', as: 'home'
  get  '/help',  to: 'static_pages#help', as: 'help'
  get  '/about',  to: 'static_pages#about', as: 'about'
  get  '/contact',  to: 'static_pages#contact', as: 'contact'
  post '/signup',  to: 'users#create'
  resources :users
end
