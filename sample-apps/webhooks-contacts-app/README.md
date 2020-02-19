# HubSpot-ruby sample Webhooks Tutorial app

This is a sample app for the [hubspot-ruby SDK](../../../../)
Currently, this app focuses on demonstrating the functionality of [Webhooks API](https://developers.hubspot.com/docs-beta/crm/extensions), contact creation/deletion in particular.

Please see the documentation on [How do I create an app in HubSpot?](https://developers.hubspot.com/docs/faq/how-do-i-create-an-app-in-hubspot)

### HubSpot Public API links used in this application

  - [Initiate an Integration with OAuth 2.0](https://developers.hubspot.com/docs/methods/oauth2/initiate-oauth-integration)
  - [Get OAuth 2.0 Access Token and Refresh Tokens](https://developers.hubspot.com/docs/methods/oauth2/get-access-and-refresh-tokens)
  - [Refresh OAuth 2.0 Access Token](https://developers.hubspot.com/docs/methods/oauth2/refresh-access-token)
  - [Read a batch of contact objects by ID](https://developers.hubspot.com/docs-beta/crm/contacts)

### Setup App

Make sure you have [Docker Compose](https://docs.docker.com/compose/) and [Ngrok](https://ngrok.com/) installed.

### Configure

1. Copy .env.template to .env
2. Paste your HUBSPOT_CLIENT_ID and HUBSPOT_CLIENT_SECRET

### Running

The best way to run this project (with the least configuration), is using docker compose. Change to the webroot and start it

```bash
docker-compose up --build
```
In another terminal, run:
```bash
docker-compose run web rake db:create db:migrate
```

Copy Ngrok url from console. Now you should now be able to navigate to that url and use the application.

### NOTE about Ngrok Too Many Connections error

If you are using Ngrok free plan and testing the application with large amount of import/deletions of Contacts you are likely to see Ngrok "Too Many Connections" error.
This is caused by a large amount of weebhooks events being sent to Ngrok tunnel. To avoid it you can deploy sample applications on your server w/o Ngrok or upgrade to Ngrok Enterprise version

### Configure webhooks

Required webhooks url should look like https://***.ngrok.io/webhooks/callback

Following [Webhooks Setup](https://developers.hubspot.com/docs/methods/webhooks/webhooks-overview) guide please note:

- Every time the app is restarted you should update the webhooks url
- The app supports `contact.creation` and `contact.deletion` subscription types only
- Subscription are paused by default. You need to activate them manually after creating
