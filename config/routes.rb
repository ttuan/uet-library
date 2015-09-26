Rails.application.routes.draw do
  get 'categories/show'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "books#index"
  resources :books
  devise_for :users
  resources :users
  resources :categories
  namespace :api, defaults: {format: :json} do
    scope module: :v1 do
      resources :users
      resources :books
    end
  end
end
