Rails.application.routes.draw do
  get 'home/index'
  resources :doacoes
  resources :doadores
  resources :ongs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
