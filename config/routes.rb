Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  devise_for :users
  resources :books, only: [:index, :create, :show, :edit, :destroy]
  resources :users, only: [:show, :edit, :update]
  get "/homes/about" => "homes#about", as: "about"
  root to: "homes#top"
end
