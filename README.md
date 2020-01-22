# ruby-hubspot-3
Ruby API vNext Client files and sample apps

- API version: v3
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build ruby-hubspot-3.gemspec
```

Then either install the gem locally:

```shell
gem install ./ruby-hubspot-3-1.0.0.gem
```
(for development, run `gem install --dev ./ruby-hubspot-3-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'ruby-hubspot-3', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'ruby-hubspot-3', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'ruby-hubspot-3'

# Setup authorization
Hubspot.configure do |config|
  # Configure API key authorization: hapikey
  config.api_key['hapikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['hapikey'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Hubspot::Client::Crm::Objects::Api::AssociationsApi.new

object_type = 'object_type_example' # String | 

object_id = 'object_id_example' # String | 

associated_object_type = 'associated_object_type_example' # String | 

to_object_id = 'to_object_id_example' # String | 


begin
  #Remove an association between two objects
  api_instance.archive_association(object_type, object_id, associated_object_type, to_object_id)
rescue Hubspot::Client::Crm::Objects::ApiError => e
  puts "Exception when calling AssociationsApi->archive_association: #{e}"
end

```