Rails.application.routes.draw do

  namespace :admin do
  devise_for :admins, :controller => {
   }
  resources :admins, only: [:top]
  resources :users, only: [:index, :show, :edit, :update, :delete]
  resources :products, only: [:new, :create, :index, :show, :edit, :update, :delete]
  resources :jenres, only: [:index, :create, :update, :delete]
  resources :orders, only: [:index, :show, :update]
  end


  devise_for :users
  root 'products#index'
  resources :users, only: [:show, :delete]
  resources :products, only: [:index, :show]
  resources :carts, only: [:create, :index, :delete]
  resources :orders, only: [:new, :check, :finish, :create, :index, :show]
  resources :sends, only: [:edit, :index, :delete, :update, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
