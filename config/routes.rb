Rails.application.routes.draw do
  devise_for :users
 
  get 'home/index'
  resources :doacoes
  resources :doadores
  resources :ongs
  resources :users
  resources :chats

  get  '/enviar-mensagem/:ong_id', to: "messages#new", as: 'new_message'
  get '/minhas-mensages', to: "messages#index", as: 'messages'
  post '/enviar-mensagem/:ong_id', to: "messages#create", as: 'create_message'

  root :to => "home#index"
end
