Rails.application.routes.draw do
  root to: 'users#index'
  resources :users, :messages
  resources :chats, :except => [:new, :create]

  get '/chats/:user_id/new' => 'chats#new', :as => :new_chat
  post '/chats/:id' => 'chats#create'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end

