Rails.application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'signup', to: 'user#new', as: 'signup'
  post 'signup', to: 'user#create'
  root to: 'admin', to: 'roms#index', as: 'admin_home'
  get 'download/:id', to: 'roms#download', as: 'download'
  resources :roms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
