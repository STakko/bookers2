Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  resources :books, only: [:new, :index, :show, :edit, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
