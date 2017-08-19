Rails.application.routes.draw do
  get 'static_pages/index'
  root 'static_pages#index'
  resources :account_items
  resources :contractors
  resources :accounts
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
