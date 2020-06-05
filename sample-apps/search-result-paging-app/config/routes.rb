Rails.application.routes.draw do
  get '/oauth', to: 'oauth/authorization#authorize'
  get '/oauth/callback', to: 'oauth/authorization#callback'
  get '/login', to: 'oauth/authorization#login'
  get '/', to: 'home#index'
  root to: 'home#index'
end
