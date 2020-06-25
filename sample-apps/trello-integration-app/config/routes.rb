Rails.application.routes.draw do
  namespace :trello do
    resources :cards, only: %i(index) do
      member do
        post 'create_association'
        delete 'delete_association'
      end
    end
  end

  get '/oauth/hubspot', to: 'oauth/authorization#authorize_hubspot'
  get '/oauth/hubspot_callback', to: 'oauth/authorization#hubspot_callback'
  get '/auth/:provider/callback', to: 'oauth/authorization#trello_callback'
  get '/oauth/trello_callback', to: 'oauth/authorization#trello_callback'
  get '/login', to: 'oauth/authorization#login'
  get 'trello/cards', to: 'trello/cards#index'
  root to: 'home#index'
end
