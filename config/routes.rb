Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/404', to: 'errors#not_found'
  get '/422', to: 'errors#not_acceptable'
  get '/500', to: 'errors#internal_error'

  resources :allergens, only: :index do
    collection do
      get 'edit-families'
      post 'update-families'
    end
  end

  resources :allergen_families, only: [:index, :show]

  resources :products, only: [:index, :show] do
    resources :ingredients, only: :index
    resources :orders, only: [:create, :destroy]

    collection do
      get 'categories/:category', to: 'products#category', as: 'category'
    end
  end

  resources :orders, only: [:index, :show, :new, :create] do
    delete 'product_orders/:id', to: "orders#product_delete"
    resources :payments, only: [:new, :create]
    collection do
      get 'shopping_cart'
    end
  end
end
