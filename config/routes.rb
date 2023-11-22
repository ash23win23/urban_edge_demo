Rails.application.routes.draw do
  devise_for :users
  root to: "store#index"
  resources :products
  resources :categories

end
