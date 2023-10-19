Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:index, :create, :show, :edit]
  get "/homes/about" => "homes#about", as: "about"
  root to: "homes#top"
end
