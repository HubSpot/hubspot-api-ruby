Rails.application.routes.draw do
  resources :contacts do
    collection do
      get :export
    end
  end
  get '/oauth', to: 'oauth/authorization#authorize'
  get '/oauth/callback', to: 'oauth/authorization#callback'
  root to: 'contacts#index'
end
