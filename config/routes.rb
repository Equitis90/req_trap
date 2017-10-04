Rails.application.routes.draw do
  resources :trap, only: [ :index, :create ]

  root to: 'trap#index'

  match '/:trap_id', to: 'trap#create', via: :all
end
