Rails.application.routes.draw do
  devise_for :executives
  devise_for :users
  resources :users
  resources :tickets
  resources :executives
  resources :comments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "pages#home"
#get '/tickets', to: 'tickets#index', as: 'tickets'

  
get '/search', to: 'tickets#search', as: 'search_tickets'
  # Check if this is ok!!
  resources :tickets do
    resources :comments
  end
  resources :users do
    resources :executives
  end
end
