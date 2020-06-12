Rails.application.routes.draw do
  resources :contacts do
    collection do
      get :export
    end
  end

  resources :properties

  get '/oauth', to: 'oauth/authorization#authorize'
  get '/oauth/callback', to: 'oauth/authorization#callback'
  get '/login', to: 'oauth/authorization#login'
  root to: 'contacts#index'
end
