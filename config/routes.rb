Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/about', to: 'pages#about'
  get '/help', to: 'pages#help'

  get '/search/:keyword', to: 'pages#search'

  #route for AJAX
  get '/search', to: 'pages#searchpage'
  post '/searchpost', to: 'pages#searchpost'

  root 'pages#home'

end
