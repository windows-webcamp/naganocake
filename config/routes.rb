Rails.application.routes.draw do

  devise_for :admins, :controllers => {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
   }
  namespace :admin do
    resources :users, only: [:index, :show, :edit, :update, :destroy]
    resources :products, only: [:new, :create, :index, :show, :edit, :update, :delete]
    resources :genres, only: [:index, :create, :update, :destroy, :edit] do
    member do
    patch 'genre_restore'
    end
    end
    resources :orders, only: [:index, :show, :update]
    get 'top' => 'admins#top'
  end


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root 'products#index'
  get '/products/:genre_id/genre', to:'products#index', as: 'genres'
  resources :users, only: [:show]
  resources :products, only: [:index, :show]
  resources :carts, only: [:create, :index, :destroy, :update]

  delete '/carts_delete' => 'carts#carts_delete' ,as: 'carts_delete'

  resources :orders, only: [:new, :create, :index, :show] do
    collection do
      post 'check'
      get 'finish'
    end
  end
  get '/orders_check' => 'orders#check',as: 'orders_check'
  resources :sends, only: [:edit, :index, :delete, :update, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
