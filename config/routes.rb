Rails.application.routes.draw do
  get 'signup', to: 'user#new', as: 'signup'
  root to: 'admin_home', to: 'roms#index', as: 'admin_home'
  get 'download/:id', to: 'roms#download', as: 'download'
  resources :roms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
