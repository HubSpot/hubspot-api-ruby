Rails.application.routes.draw do
  get '/contacts', to: 'contacts#index'
  get '/oauth', to: 'oauth/authorization#authorize'
  get '/oauth/callback', to: 'oauth/authorization#callback'
  root to: 'contacts#index'
end
