Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  get 'ingredients/index'
  get 'allergens_families/index'
  get 'allergens_families/show'
  
  devise_for :users
  root to: 'pages#home'
  
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

  resources :allergens, except: [:show, :edit, :update]

  resources :allergen_families, only: [:index, :show]

  resources :products, only: [:index, :show] do
    resources :ingredients, only: :index
  end

  resources :orders, only: [:index, :show, :new, :create] do
    resources :payments, only: [:new, :create]
  end
end
