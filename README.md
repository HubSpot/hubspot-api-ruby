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

# Setup client
client = Hubspot::Client.new(access_token: 'your_access_token')

# Get contacts
contacts = client.crm.contacts.basic_api.get_page
```

### Usage

#### Hapikey support:

Please, note that hapikey is no longer supported after v13.1.0. You can get more info about hapikey sunset [here](https://developers.hubspot.com/changelog/upcoming-api-key-sunset). Also, plese, visit a [migration guide](https://developers.hubspot.com/docs/api/migrate-an-api-key-integration-to-a-private-app) if you need help with a migration process.

### Get all:
get_all method is available for all major objects (Companies, Contacts, Deals, LineItems, Products, Quotes & Tickets) and works like

```ruby
client = Hubspot::Client.new(access_token: 'your_oauth2_access_token')
all_contacts = client.crm.contacts.basic_api.get_all
```

You'll need to create a [private app](https://developers.hubspot.com/docs/api/private-apps) to get your access token or you can obtain OAuth2 access token.

Please note that pagination is used under the hood to get all results.


### Crm Object Schemas client usage:

#### Creation

```ruby
client = Hubspot::Client.new(access_token: 'your_oauth2_access_token')

labels = {
  singular: 'My object',
  plural: 'My objects'
}

option = {
  label: 'Option A',
  value: 'A',
  description: 'Choice number one',
  display_order: 1,
  hidden: false
}

property = {
  name: 'property001',
  label: 'My object property',
  group_name: 'my_object_information',
  options: [option],
  display_order: 2,
  type: 'enumeration',
  field_type: 'select'
}

body = {
  labels: labels,
  required_properties: ['property001'],
  searchable_properties: [],
  primary_display_property: 'property001',
  secondary_display_properties: [],
  properties: [property],
  associated_objects: ['CONTACT'],
  name: 'my_object'
}

api_response = client.crm.schemas.core_api.create(body: body)
```


### Error handling

#### You can rescue an ApiError by passing a block to the method

```ruby
require 'hubspot-api-client'

client = Hubspot::Client.new(access_token: 'your_access_token')

contacts = client.crm.contacts.basic_api.get_page { |error| error.message }
```

#### You can set number of retry attempts and delay in seconds before retry on specific status code of response.

Available params:
  - max_retries (maximum number of retries)
  - seconds_delay (pause in seconds between retries)
  - passing a block (block that handles errors occured)


```ruby
require 'hubspot-api-client'

# Set handlers of statuses you want to handle
retry_config = {
  500..530 => { max_retries: 2, seconds_delay: 2 },
  400 => { max_retries: 3, seconds_delay: 3 }
}

client = Hubspot::Client.new(access_token: 'your_access_token')

contacts = client.crm.contacts.basic_api.get_page(retry: retry_config) { |error| error.code }
```

### Sample apps

Please, take a look at our [Sample apps](https://github.com/HubSpot/sample-apps-list)
