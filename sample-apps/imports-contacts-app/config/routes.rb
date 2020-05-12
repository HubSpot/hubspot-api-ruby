Rails.application.routes.draw do
  resources :imports

  resources :properties

  get '/oauth', to: 'oauth/authorization#authorize'
  get '/oauth/callback', to: 'oauth/authorization#callback'
  get '/login', to: 'oauth/authorization#login'
  root to: 'imports#index'
end
