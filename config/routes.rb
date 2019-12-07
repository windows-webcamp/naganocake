Rails.application.routes.draw do

  devise_for :admins, :controllers => {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
   }
  namespace :admin do
  resources :admins, only: [:top]
  resources :users, only: [:index, :show, :edit, :update, :delete]
  resources :products, only: [:new, :create, :index, :show, :edit, :update, :delete]
  resources :genres, only: [:index, :create, :update, :delete]
  resources :orders, only: [:index, :show, :update]
  end


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root 'products#index'
  resources :users, only: [:show, :delete]
  resources :products, only: [:index, :show]
  resources :carts, only: [:create, :index, :delete]
  resources :orders, only: [:new, :check, :finish, :create, :index, :show]
  resources :sends, only: [:edit, :index, :delete, :update, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
