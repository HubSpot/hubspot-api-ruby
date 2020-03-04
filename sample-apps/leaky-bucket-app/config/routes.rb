require 'resque/server'

Rails.application.routes.draw do
  mount Resque::Server.new, at: '/resque'

  get '/oauth', to: 'oauth/authorization#authorize'
  get '/oauth/callback', to: 'oauth/authorization#callback'
  get '/login', to: 'oauth/authorization#login'
  root to: 'home#index'
end
