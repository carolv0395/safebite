Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all


  resources :allergens, only: [:new, :create] do
    collection do
      get 'edit-families'
      post 'update-families'
    end
  end

  resources :allergen_families, only: [:index, :show]

  resources :products, only: [:index, :show] do
    resources :ingredients, only: :index
      collection do
        get 'categories/:category', to: 'products#category', as: 'category'
      end
  end

  resources :orders, only: [:index, :show, :new, :create] do
    resources :payments, only: [:new, :create]
  end
end
