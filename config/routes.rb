Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
  post 'message', to: 'messages#create'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  mount ActionCable.server, at: '/cable'
end
