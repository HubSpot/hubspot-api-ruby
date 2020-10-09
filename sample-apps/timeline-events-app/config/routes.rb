Rails.application.routes.draw do
  get '/oauth', to: 'oauth/authorization#authorize'
  get '/oauth/callback', to: 'oauth/authorization#callback'
  get '/login', to: 'oauth/authorization#login'
  post '/create', to: 'timeline_events#create'
  root to: 'timeline_events#index'
end
