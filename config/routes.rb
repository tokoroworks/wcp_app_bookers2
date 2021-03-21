Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions',
  #   registrations: 'users/registrations'
  # }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "homes#top", as: 'root'
  resources :books, only:[:new, :create, :index, :show, :destroy]
  resources :users, only:[:show, :edit, :update]
  get 'home/about' => 'homes#about', as: 'about'
  get 'users' => 'users#userlist', as: 'users'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  # get 'users/:id/edit' => 'users#edit', as: 'edit_user'
  # patch 'users/:id' => 'users#update', as: 'update_user'

end
