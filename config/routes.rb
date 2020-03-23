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
  # get 'transactions/:id',to: "transaction#view"



  get '/login' , to: 'auth#new'
  post '/login' , to: 'auth#login'

  get '/register' , to: 'user#new'
  post '/register' , to: 'user#create'

  get '/logout' , to: 'auth#logout'


end
