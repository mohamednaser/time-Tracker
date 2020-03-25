Rails.application.routes.draw do
  root to: 'transaction#index'

  get 'groups' ,to: "group#index"
  post "groups", to: "group#create"
  get 'groups/new', to: "group#new"
  get 'groups/transactions/:id' , to: "transaction#group_transactions"

  get 'transactions',to: "transaction#index"
  get 'transactions/external', to: "transaction#external"
  get 'transactions/new', to: "transaction#new"
  post "transactions", to: "transaction#create"

  get '/login' , to: 'auth#new'
  post '/login' , to: 'auth#login'
  get '/logout' , to: 'auth#logout'

  get 'users' , to: 'user#new'
  post 'users' , to: 'user#create'

end
