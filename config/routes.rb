Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :index, :update]
  get "/homes/about" => "homes#about"
  root to: "homes#top"
end
