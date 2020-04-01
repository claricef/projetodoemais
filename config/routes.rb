Rails.application.routes.draw do
  get 'chats/show'
  get 'home/index'
  resources :doacoes
  resources :doadores
  resources :ongs
  resources :users
  resources :chats

  root :to => "home#index"
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
