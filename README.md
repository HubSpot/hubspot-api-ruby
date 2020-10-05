# hubspot-api-client
Ruby API v3 Client files and sample apps

- API version: v3
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

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
  # Configure API key authorization: hapikey
  config.api_key['hapikey'] = 'demo'
end

# Get contacts
basic_api = Hubspot::Crm::Contacts::BasicApi.new
basic_api.get_page(auth_names: 'hapikey')

```

### Usage

### Get all:
get_all method is available for all major objects (Companies, Contacts, Deals, LineItems, Products, Quotes & Tickets) and works like

```ruby
basic_api = Hubspot::Crm::Contacts::BasicApi.new
all_contacts = basic_api.get_all(auth_names: 'oauth2')
```
Please note that pagination is used under the hood to get all results.


### Crm Object Schemas client usage:

#### Creation

```ruby
config = ::Hubspot::Crm::Schemas::Configuration.new do |config|
    config.api_key = { 'hapikey' => 'your_hapikey' }
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
