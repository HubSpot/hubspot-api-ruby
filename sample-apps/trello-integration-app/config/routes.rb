Rails.application.routes.draw do
  get '/oauth/hubspot', to: 'oauth/authorization#authorize_hubspot'
  get '/oauth/hubspot_callback', to: 'oauth/authorization#hubspot_callback'
  get '/auth/:provider/callback', to: 'oauth/authorization#trello_callback'
  get '/oauth/trello_callback', to: 'oauth/authorization#trello_callback'
  get '/login', to: 'oauth/authorization#login'
  root to: 'home#index'
end
