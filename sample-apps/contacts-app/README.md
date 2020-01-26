# HubSpot-ruby sample app

# HubSpot-ruby contacts sample app

This is a sample app for the [hubspot-ruby SDK](../../../../../). Currently, this app focuses on demonstrating the functionality of [Contacts API](https://developers.hubspot.com/docs-beta/crm/contacts) endpoints and their related actions.

Please see the documentation on [Creating an app in HubSpot](https://developers.hubspot.com/docs-beta/creating-an-app)
### HubSpot Public API links used in this application

  - [Create contact](https://developers.hubspot.com/docs-beta/crm/contacts)
  - [Get a contact record by its id](https://developers.hubspot.com/docs-beta/crm/contacts)
  - [Get all contacts](https://developers.hubspot.com/docs-beta/crm/contacts)
  - [Get all contacts properties](https://developers.hubspot.com/docs-beta/crm/properties)
  - [Get all contact property groups](https://developers.hubspot.com/docs-beta/crm/properties)
  - [Get list of owners](https://developers.hubspot.com/docs-beta/crm/owners)
  - [Update a contact property](https://developers.hubspot.com/docs-beta/crm/properties)
  - [Create a contact property](https://developers.hubspot.com/docs-beta/crm/properties)
  - [Search for contacts](https://developers.hubspot.com/docs-beta/crm/contacts)

### Setup App

Make sure you have [Docker Compose](https://docs.docker.com/compose/) installed.

### Configure

1. Copy .env.template to .env
2. Specify authorization data in .env:
    - Paste HUBSPOT_CLIENT_ID and HUBSPOT_CLIENT_SECRET for OAuth

### Running

The best way to run this project (with the least configuration), is using docker compose.  Change to the webroot and start it

```bash docker-compose up --build web```
You should now be able to navigate to [http://localhost:3000](http://localhost:3000) and use the application.

### Running tests

1. Copy .env.test.template to .env.test
2. Paste your HUBSPOT_EMAIL, HUBSPOT_PASSWORD, HUBSPOT_USER_ID
3. run ```rspec -fd```
