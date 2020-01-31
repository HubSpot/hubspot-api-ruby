Rails.application.routes.draw do
  get '/events', to: 'events#index'
  get '/oauth', to: 'oauth/authorization#authorize'
  get '/oauth/callback', to: 'oauth/authorization#callback'
  post '/webhooks/callback', to: 'webhooks#callback'
  get '/login', to: 'oauth/authorization#login'

  root to: 'events#index'
end
