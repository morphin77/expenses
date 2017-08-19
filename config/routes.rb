Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/index'
  get 'static_pages/landing'
  root 'static_pages#landing'
  resources :account_items
  resources :contractors
  resources :accounts
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
