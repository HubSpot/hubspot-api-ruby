# hubspot-api-client
Ruby API v3 Client files and sample apps

- API version: v3
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Documentation

See the [Hubspot API](https://developers.hubspot.com/docs/api/overview) docs.

## Installation

```ruby

gem 'hubspot-api-client'

```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'hubspot-api-client'

# Setup authorization
Hubspot.configure do |config|
  config.access_token = 'your_access_token'
end

# Get contacts
basic_api = Hubspot::Crm::Contacts::BasicApi.new
basic_api.get_page(auth_names: 'oauth2')
```

for new discovery classes since version 11.2
```ruby
# Load the gem
require 'hubspot-api-client'

# Setup client
client = Hubspot::Client.new(access_token: 'your_access_token')

# Get contacts
contacts = client.crm.contacts.basic_api.get_page
```

### Usage

### Get all:
get_all method is available for all major objects (Companies, Contacts, Deals, LineItems, Products, Quotes & Tickets) and works like

```ruby
basic_api = Hubspot::Crm::Contacts::BasicApi.new
all_contacts = basic_api.get_all(auth_names: 'oauth2')
```

for new discovery classes since version 11.2
```ruby
client = Hubspot::Client.new(access_token: 'your_oauth2_access_token')
all_contacts = client.crm.contacts.basic_api.get_all
```

You'll need to create a [private app](https://developers.hubspot.com/docs/api/private-apps) to get your access token or you can obtain OAuth2 access token.

Please note that pagination is used under the hood to get all results.


### Crm Object Schemas client usage:

#### Creation

```ruby
config = ::Hubspot::Crm::Schemas::Configuration.new do |config|
  config.access_token = 'your_access_token'
end

api_client = ::Hubspot::Crm::Schemas::ApiClient.new(config)
api = ::Hubspot::Crm::Schemas::CoreApi.new(api_client)
labels = ::Hubspot::Crm::Schemas::ObjectTypeDefinitionLabels.new(singular: 'My object', plural: 'My objects')

option = ::Hubspot::Crm::Schemas::OptionInput.new(
  label: 'Option A',
  value: 'A',
  description: 'Choice number one',
  display_order: 1,
  hidden: false
)

property = ::Hubspot::Crm::Schemas::ObjectTypePropertyCreate.new(
  name: 'property001',
  label: 'My object property',
  group_name: 'my_object_information',
  options: [option],
  display_order: 2,
  type: 'enumeration',
  field_type: 'select'
)

object_schema_egg = ::Hubspot::Crm::Schemas::ObjectSchemaEgg.new(
  labels: labels,
  required_properties: ['property001'],
  searchable_properties: [],
  primary_display_property: 'property001',
  secondary_display_properties: [],
  properties: [property],
  associated_objects: ['CONTACT'],
  name: 'my_object'
)

api_response = api.create(object_schema_egg)
```


### Error handling

#### You can set number of retry attempts and delay in seconds before retry on specific status code of response.

Available params:
  - max_retries (maximum number of retries)
  - seconds_delay (pause in seconds between retries)
  - retry_block (block that is executed after every retry)


```ruby
config = ::Hubspot::Crm::Companies::Configuration.new do |config|
  config.access_token = 'YOUR ACCESS TOKEN'

  # Set handlers of statuses you want to handle
  config.error_handler = {
    [429, 430, 442] => { max_retries: 5, seconds_delay: 1 },
    (500..530).to_a => { max_retries: 2, seconds_delay: 2 },
    400 => { max_retries: 3, seconds_delay: 3 },
  }
end

api_client = ::Hubspot::Crm::Companies::ApiClient.new(config)
basic_api = ::Hubspot::Crm::Companies::BasicApi.new(api_client)
end

```

### Sample apps

Please, take a look at our [Sample apps](https://github.com/HubSpot/sample-apps-list)
