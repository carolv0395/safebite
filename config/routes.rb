Rails.application.routes.draw do
  get 'orders/index,'
  get 'orders/show,'
  get 'orders/create,'
  get 'orders/new'
  get 'ingredients/index'
  get 'categories/index'
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
