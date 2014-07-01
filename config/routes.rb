Rails.application.routes.draw do
  root to: 'users#index'
  resources :users, :messages
  resources :chats, :except => :create

  post '/chats/:id' => 'chats#create'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end

