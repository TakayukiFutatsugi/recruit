Rails.application.routes.draw do
  root to: 'home#index'
  resources :home, only: [:index]
  resources :jobs do
    resources :entries, only: [:create]
  end
  devise_for :users
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
