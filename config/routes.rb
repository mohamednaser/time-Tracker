Rails.application.routes.draw do
  
  get 'group/index'
  post "group/create", to: "group#create"
  get 'group/new'

  get 'transaction/index'
  get 'transaction/view'
  get 'transaction/external'
  get 'transaction/new'

  get '/login' , to: 'user#login'
  post '/login' , to: 'user#view'

end
