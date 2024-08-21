Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:index, :show, :edit, :create]
  root to: "homes#top"
  get 'home/about' => 'homes#about', as: 'about'
end
