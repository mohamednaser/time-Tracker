Rails.application.routes.draw do
  get 'transaction/index'
  get 'transaction/view'
  get '/login' , to: 'user#login'
  post '/login' , to: 'user#view'

end
