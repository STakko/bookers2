Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'homes/about' => 'homes#about'
  get 'users/:id/edit' => 'users#edit', as:'edit_user_path'
  get 'users/:id' => 'users#show', as:'user_path'
  get 'users' => 'users#index', as:'users_path'
  get 'users/:id' => 'users#user_books', as'user_books_path'

  get 'books/:id/edit' => 'books#edit', as:'books_edit_path'
  get 'books/:id' => 'books#show', as:'book_path'
  get 'books' => 'books#index', as:'books_path'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
