Rails.application.routes.draw do
  root to: 'events#index'
  devise_for :users

  resources :static_pages
  resources :events
  resources :attendances
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
