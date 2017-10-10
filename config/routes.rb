Rails.application.routes.draw do
  resources :trap, only: [ :index, :create ]

  root to: 'trap#index'

  match '/:trap_id/requests', to: 'trap#requests', :constraints => {:trap_id => /.*/}, via: :get
  match '/:trap_id', to: 'trap#create', :constraints => {:trap_id => /.*/}, via: :all
end
