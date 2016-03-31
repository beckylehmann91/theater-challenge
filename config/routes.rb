Rails.application.routes.draw do

  root 'showings#index'
  resources :auditoria
  resources :movies
  resources :orders
  resources :showings

end
