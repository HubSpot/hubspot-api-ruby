Rails.application.routes.draw do
  resources :contacts, only: %i[index show new create update]
  get '/oauth', to: 'oauth/authorization#authorize'
  get '/oauth/callback', to: 'oauth/authorization#callback'
  root to: 'contacts#index'
end
