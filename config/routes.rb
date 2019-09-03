Rails.application.routes.draw do
  get 'products/index,'
  get 'products/show'
  devise_for :users
  root to: 'products#index'

  resources :allergens, except: :show do
    collection do
      get :list_own
    end
  end

  resources :products, only: [:index, :show] do
    resources :ingredients, only: :index
  end

  resources :categories, only: :index

  resources :orders, only: [:index, :show, :new, :create] do
    resources :payments, only: [:new, :create]
  end
end
