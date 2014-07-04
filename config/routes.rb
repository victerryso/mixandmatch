Rails.application.routes.draw do
  root to: 'users#index'
  resources :users

  get '/chats/:user_id/new' => 'chats#new', :as => :new_chat
  post '/chats/:id' => 'chats#create'
  get 'chats/:id' => 'chats#show', :as => :chat
  get '/chats/:id/match' => 'chats#match', :as => :match

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end

