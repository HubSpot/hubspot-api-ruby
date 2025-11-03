# hubspot-api-client

Ruby API v3 Client files and sample apps

- API version: v3
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Documentation

See the [Hubspot API](https://developers.hubspot.com/docs/api/overview) docs.

## Installation

```ruby

gem install 'hubspot-api-client'

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

#### Hapikey support

Please, note that hapikey is no longer supported after v13.1.0. You can get more info about hapikey sunset [here](https://developers.hubspot.com/changelog/upcoming-api-key-sunset). Also, plese, visit a [migration guide](https://developers.hubspot.com/docs/api/migrate-an-api-key-integration-to-a-private-app) if you need help with a migration process.

### Get all

`get_all` method is available for all objects (Companies, Contacts, Deals and etc).

```ruby
client = Hubspot::Client.new(access_token: 'your_oauth2_access_token')
all_contacts = client.crm.contacts.basic_api.get_all
```

You'll need to create a [private app](https://developers.hubspot.com/docs/api/private-apps) to get your access token or you can obtain OAuth2 access token.

Please note that pagination is used under the hood to get all results.

### Get one 

`get_by_id` is also available for all objects. But, you will need to pass a `[object name]_id` property explicitly into your request. 

For contacts:  

```ruby
client = Hubspot::Client.new(access_token: 'your_oauth2_access_token')
contact = client.crm.contacts.basic_api.get_one(contact_id: 123_456) # using a numeric Hubspot ID
```

For owners: 

```ruby
client = Hubspot::Client.new(access_token: 'your_oauth2_access_token')
owner = client.crm.owners.owners_api.get_one(owner_id: 123_456)
```

By default, fetches will use Hubspot's numeric IDs in the `[object name]_id` field. But, you can fetch using any unique field. You just need to specify _which_ field, using an `id_property` value.

For example, to search Contacts for a particular email address:

```ruby
client = Hubspot::Client.new(access_token: 'your_oauth2_access_token')
contact = client.crm.contacts.basic_api.get_one(contact_id: 'example@email.com', id_property: 'email') 
```

Note that this `id_property` field is distinct from the `properties` field. The `properties` field indicates which values you want fetch _from_ Hubspot. 

```ruby
client = Hubspot::Client.new(access_token: 'your_oauth2_access_token')
contact = client.crm.contacts.basic_api.get_one(contact_id: 'example@email.com', id_property: 'email', properties: ['email', 'id', 'first_name']) # returns email, id, and first name 
```

## Search

`do_search` method is available for all objects (Companies, Contacts, Deals and etc).

Only 3 `FilterGroups` with max 3 `Filters` are supported.

## Not wrapped endpoint(s)

It is possible to access the hubspot request method directly,
it could be handy if client doesn't have implementation for some endpoint yet.
Exposed request method benefits by having all configured client params.

```ruby
client.api_request({
    "method": "PUT",
    "path": "/some/api/not/wrapped/yet",
    "body": {"key": "value"}
})
```

## api_request options

```ruby
- "method": string, # Http method (e.g.: GET, POST, etc). Default value GET
  "path": string, # URL path (e.g.: '/crm/v3/objects/contacts'). Optional
  "headers": array, # Http headers. Optional.
  "body": mixed, # Request body (if defaultJson set body will be transforted to json string).Optional.
  "auth_type": (access_token, hapikey, developer_api_key), # Auth type. if it isn't set it will use access_token or hapikey. Default value is non empty auth_type.
  "auth_value": string, # The corresponding value for the auth_type.
  "base_url": string, # Base URL. Default value 'https://api.hubapi.com'.
  "qs": array, # Query parameters. Optional.
  "default_json": bool, # Default Json. if it is set to true it add to headers [ 'Content-Type' => 'application/json', 'Accept' => 'application/json, */*;q=0.8',]
```

### {Example} for `GET` request

```ruby
require 'hubspot-api-client'

client = Hubspot::Client.new(access_token: 'your_access_token')

options = {
  method: "GET",
  path: "/crm/v3/objects/contacts",
  qs: {
    limit: 1,
    properties: ["email", "last_activity_date"]
  }
}

contacts = client.api_request(options)

p JSON.parse(contacts.body)
```

### {Example} for `POST` request

```ruby
require 'hubspot-api-client'

client = Hubspot::Client.new(access_token: 'your_access_token')

options = {
  method: "POST",
  path: "/crm/v3/objects/contacts",
  body: {
    "properties": {
      "email": "some_email@some.com",
      "lastname": "some_last_name"
    }
  }
}

contacts = client.api_request(options)

p JSON.parse(contacts.body)
```

### Example search by date

```ruby
require 'hubspot-api-client'
require 'date'

api_client = Hubspot::Client.new(access_token: "YOUR_ACCESS_TOKEN")
# timestamp in milliseconds
timestamp = (DateTime.parse("XXXX-XX-XXTXX:XX:XX.XXXZ").to_time.to_f * 1000).to_i.to_s
body = {
  "filterGroups":
    [
      {
        "filters":[
          {
            "value": timestamp,
            "propertyName":"lastmodifieddate",
            "operator":"EQ"
          }
        ]
      }
    ]
}
api_response = api_client.crm.contacts.search_api.do_search(
  body: body
)
puts api_response
```

### Crm Object Schemas client usage

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
