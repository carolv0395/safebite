Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'

  resources :allergens, except: :show do
    collection do
      get :list
    end
  end

  resources :products, only: [:index, :show] do
    resources :ingredients
  end
  resources :categories, only: :index

end
