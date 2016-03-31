Rails.application.routes.draw do

  root 'movies#index'
  resources :auditoria
  resources :movies
  resources :orders
  resources :showings

end
