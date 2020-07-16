Rails.application.routes.draw do
  root to: 'roms#index'
  get 'download/:id', to: 'roms#download', as: 'download'
  resources :roms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
