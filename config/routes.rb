Rails.application.routes.draw do
  get 'orders/index,'
  get 'orders/show,'
  get 'orders/create,'
  get 'orders/new'
  get 'ingredients/index'
  get 'categories/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
