Rails.application.routes.draw do
  get '/ong/minhas-mensagens', to: "messages_ong#index", as: "messages_ong"
  get '/ong/enviar-mensagem/:id', to: "messages_ong#new", as: 'new_message_ong'
  post '/ong/enviar-mensagem-doador/:id', to: "messages_ong#create", as: 'create_message_ong'

  devise_for :users
 
  get 'home/index'
  get '/welcome', to: "home#welcome", as: "welcome"

  resources :doacoes
  resources :doadores
  resources :ongs
  resources :users
  resources :chats

  get  '/doador/enviar-mensagem/:id', to: "messages#new", as: 'new_message'
  get '/doador/minhas-mensagens', to: "messages#index", as: 'messages'
  post '/doador/enviar-mensagem/:id', to: "messages#create", as: 'create_message'

  root :to => "home#index"
end
