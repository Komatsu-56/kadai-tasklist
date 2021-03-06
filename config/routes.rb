Rails.application.routes.draw do
  get 'toppages/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  resources :tasks, only: [:create, :destroy, :edit]
end
