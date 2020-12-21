
Rails.application.routes.draw do
  resources :products
  devise_for :users
  get '/payment' => 'orders#payment', :as => 'payment_option'
  post 'orders/place_order'
  get 'store/index'
  get '/search' => 'products#search', :as => 'search_page'
  root 'products#index'
  resources :orders do
    resources :line_items
  end
  resource :carts, only: [:show]
  
end

