Rails.application.routes.draw do
  get '/oauth', to: 'oauth/authorization#authorize'
  get '/oauth/callback', to: 'oauth/authorization#callback'
  get '/login', to: 'oauth/authorization#login'
  get '/contacts', to: 'contacts#index'
  root to: 'contacts#index'
end
