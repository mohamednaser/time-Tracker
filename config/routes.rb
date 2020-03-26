Rails.application.routes.draw do
  root to: 'transactions#index'

  # Custom Routes
  get 'groups/transactions/:id' , to: "transactions#group_transactions"
  get 'transactions/external', to: "transactions#external"

  post '/login', to: 'auth#create'
  get '/login', to: 'auth#new'
  delete '/logout', to: 'auth#destroy'

  # resources
  resources 'groups'
  resources 'transactions'
  resources 'users', only: [:new, :create]

end
