Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "books#index"
  devise_for :users
  namespace :api, defaults: {format: :json} do
    scope module: :v1 do
      resources :users
      resources :books
    end
  end
end
