Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end
  resources :users, only: [:new, :create, :confirm]
  post 'users/confirm' => 'users#confirm'
  resources :sessions, only: [:new, :create, :destroy]
  get 'about' => 'welcome#about'
  root to: 'welcome#index'
end
