SimpleChatFour::Application.routes.draw do
  root to: 'chats#index'

  get 'sessions/new' => 'sessions#new'
  post 'sessions' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  # post 'users' => 'users#create'
  # get 'users/new' => 'users#new'
  resources :users

  post '/chats/send_chat', to: 'chats#send_chat', as: 'send_chat'
end
