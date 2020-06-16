Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :trello,
    ENV['TRELLO_KEY'],
    ENV['TRELLO_SECRET'],
    app_name: "test",
    scope: 'read,write,account',
    expiration: 'never',
    callback_path: '/oauth/trello_callback'
  )
end