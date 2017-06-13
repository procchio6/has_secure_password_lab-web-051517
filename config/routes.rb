Rails.application.routes.draw do

  resources :users, only: [:new, :create]
  get 'users/welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
