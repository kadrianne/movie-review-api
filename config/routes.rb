Rails.application.routes.draw do
  resources :reviews, only: [:index, :create, :show]
  resources :users, except: [:new, :edit]
  resources :movies, except: [:new, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
