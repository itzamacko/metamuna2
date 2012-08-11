Metamuna2::Application.routes.draw do
 
  root to: 'static_pages#home'
  
  match '/signup',  to: 'users#new'
  match '/help', to: 'static_pages#help'
  match '/about', to: 'static_pages#about'

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => 'home#index'
  devise_for :users
  resources :users, :only => [:show, :index]
end
