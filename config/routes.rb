Rails.application.routes.draw do

  root 'movies#index'
  resources :auditoria
  resources :movies
  resources :showings do
    resources :orders
  end

  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: 'logout'

end
