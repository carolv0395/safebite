Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  devise_for :users
  root to: 'pages#home'

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all


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
