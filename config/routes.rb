Rails.application.routes.draw do
  root to: 'transaction#index'

  get 'group/index'
  post "group/create", to: "group#create"
  get 'group/new'
  get 'group/transactions/:id' , to: "transaction#group_transactions"

  get 'transaction/index'
  get 'transaction/view'
  get 'transaction/external'
  get 'transaction/new'
  post "transaction/create", to: "transaction#create"


  get '/login' , to: 'auth#new'
  post '/login' , to: 'auth#login'

  get '/register' , to: 'user#new'
  post '/register' , to: 'user#create'

  get '/logout' , to: 'auth#logout'


end
