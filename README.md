# hubspot-api-client
Ruby API v3 Client files and sample apps

- API version: v3
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build hubspot-api-client.gemspec
```

Then either install the gem locally:

```shell
gem install ./hubspot-api-client-1.0.0.gem
```
(for development, run `gem install --dev ./hubspot-api-client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'hubspot-api-client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'hubspot-api-client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'hubspot-api-client'

# Setup authorization
Hubspot.configure do |config|
  # Configure API key authorization: hapikey
  config.api_key['hapikey'] = 'demo'
end

# Get contacts
basic_api = Hubspot::Client::Crm::Contacts::Api::BasicApi.new
basic_api.get_page(auth_names: 'hapikey')

```

### Error handling

#### You can set number of retry attempts and delay in seconds before retry on specific status code of response.

Available params:
  - max_retries (maximum number of retries)
  - seconds_delay (pause in seconds between retries)
  - retry_block (block that is executed after every retry)


```ruby
config = ::Hubspot::Client::Crm::Companies::Configuration.new do |config|
  config.access_token = 'YOUR ACCESS TOKEN'

  # Set handlers of statuses you want to handle
  config.error_handler = {
    [429, 430, 442] => { max_retries: 5, seconds_delay: 1 },
    (500..530).to_a => { max_retries: 2, seconds_delay: 2 },
    400 => { max_retries: 3, seconds_delay: 3 },
  }
end

api_client = ::Hubspot::Client::Crm::Companies::ApiClient.new(config)
basic_api = ::Hubspot::Client::Crm::Companies::Api::BasicApi.new(api_client)
end

```
