Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'

  resources :allergens, except: :show

  resources :allergen_families, only: [:index, :show]

  resources :products, only: [:index, :show] do
    resources :ingredients, only: :index
  end

  resources :orders, only: [:index, :show, :new, :create] do
    resources :payments, only: [:new, :create]
  end
end
