Rails.application.routes.draw do
  resources :imports, only: %i(index create)
  get '/download', to: 'imports#download_example'

  resources :properties

  get '/oauth', to: 'oauth/authorization#authorize'
  get '/oauth/callback', to: 'oauth/authorization#callback'
  get '/login', to: 'oauth/authorization#login'
  root to: 'imports#index'
end
