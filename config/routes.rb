Rails.application.routes.draw do

  root 'movies#index'
  resources :auditoria
  resources :movies
  resources :showings do
    resources :orders
  end

end
