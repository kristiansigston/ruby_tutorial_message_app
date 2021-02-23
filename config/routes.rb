Rails.application.routes.draw do
  root 'session#new' 
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'login', to: 'session#destroy'
  get 'chatroom', to: 'chatroom#new'
end
