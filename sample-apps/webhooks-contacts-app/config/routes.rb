Rails.application.routes.draw do
  get '/events', to: 'events#index'
  get '/events/not_shown_count', to: 'events#not_shown_count'
  get '/oauth', to: 'oauth/authorization#authorize'
  get '/oauth/callback', to: 'oauth/authorization#callback'
  post '/webhooks/callback', to: 'webhooks#callback'
  get '/login', to: 'oauth/authorization#login'
  get '/', to: 'home#index'
  post '/start', to: 'home#start'

  root to: 'events#index'
end
