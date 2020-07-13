Rails.application.routes.draw do
  namespace :trello do
    resources :cards, only: %i(index) do
      collection do
        get 'search'
        get 'search_frame'
        get 'search_frame_success'
        delete 'delete_association'
      end
    end
    post 'cards/search_frame', to: 'cards#create_association'
    get 'cards', to: 'cards#index'

    post '/webhooks/receive', to: 'webhooks#receive'
    get '/webhooks/complete', to: 'webhooks#complete'
  end

  resources :associations, only: %i[index]

  get '/oauth/hubspot', to: 'oauth/authorization#authorize_hubspot'
  get '/oauth/hubspot_callback', to: 'oauth/authorization#hubspot_callback'
  get '/auth/:provider/callback', to: 'oauth/authorization#trello_callback'
  get '/oauth/trello_callback', to: 'oauth/authorization#trello_callback'
  get '/login', to: 'oauth/authorization#login'

  post '/create_card', to: 'home#create_card'
  get '/success', to: 'home#success'
  root to: 'home#index'
end
