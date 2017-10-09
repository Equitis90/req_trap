Rails.application.routes.draw do
  resources :trap, only: [ :index, :create ]

  root to: 'trap#index'

  match '/:trap_id', to: 'trap#create', via: :all
  match '/:trap_id/requests', to: 'trap#requests', via: :get
  get 'trap/render_request'
end
