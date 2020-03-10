Rails.application.routes.draw do
  resources :reviews
  resources :users, only: [:index, :create, :show]
  resources :movies, only: [:index, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
