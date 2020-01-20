# HubSpot-ruby sample Contacts 2.0 app

This is a sample app for the [hubspot-ruby SDK](https://github.com/adimichele/hubspot-ruby). Currently, this app focuses on demonstrating the functionality of [Contacts API](https://developers.hubspot.com/docs/methods/contacts/contacts-overview) endpoints and their related actions.

Please see the documentation on [How do I create an app in HubSpot?](https://developers.hubspot.com/docs/faq/how-do-i-create-an-app-in-hubspot)

### Setup App

Make sure you have [Docker Compose](https://docs.docker.com/compose/) installed.

### Configure

1. Copy .env.template to .env
2. Paste your HUBSPOT_CLIENT_ID and HUBSPOT_CLIENT_SECRET

### Running

The best way to run this project (with the least configuration), is using docker compose.  Change to the webroot and start it

```bash
docker-compose up
```
You should now be able to navigate to [http://localhost:3000](http://localhost:3000) and use the application.

### Testing

1. Copy .env.test.template to .env.test
2. Paste your HUBSPOT_EMAIL, HUBSPOT_PASSWORD, HUBSPOT_USER_ID
3. run ```rspec -fd```
