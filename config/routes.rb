Rails.application.routes.draw do
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:index, :show, :edit]
  root to: "homes#top"
  get 'home/about' => 'homes#about', as: 'about'
  devise_for :users
end
