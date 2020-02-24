# HubSpot Ruby Leaky Bucket Sample App

This is a sample app for the [hubspot-ruby SDK](../../../../). Currently, this app focuses on demonstrating the mechanism (Leaky Bucket) of avoiding of rate limits. It will be useful for you if you don't want to reach rate limit (429 http error).

Please see the documentation on [Creating an app in HubSpot](https://developers.hubspot.com/docs-beta/creating-an-app)

### HubSpot Public API endpoints used in this application

  - [Contacts](https://developers.hubspot.com/docs-beta/crm/contacts)
  - [OAuth](https://developers.hubspot.com/docs-beta/working-with-oauth)

### Setup App

Make sure you have [Docker Compose](https://docs.docker.com/compose/) installed.

### Configure

1. Copy .env.template to .env
2. Specify authorization data in .env:
    - Paste HUBSPOT_CLIENT_ID and HUBSPOT_CLIENT_SECRET for OAuth

### Running

The best way to run this project (with the least configuration), is using docker compose.  Change to the webroot and start it

```bash
docker-compose up --build
```
You should now be able to navigate to [http://localhost:3000](http://localhost:3000).
Firstly you will need to authorize via OAuth there.
Then you can to go to the terminal window and execute the command that displayed on root page.
Rake task will execute process of multiple creation and deletion of contacts. Huge number of such operations may cause 429 error. To avoid this we use leaky bucket mechanism: worker sleeps some time before making request to API. This helps prevent the excess of the number of requests per minute.

Please note this app starts a few workers in order to test rate limit.