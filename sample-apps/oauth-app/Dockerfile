FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /hubspot-api-client

COPY ./lib /hubspot-api-client/lib
COPY ./sample-apps /hubspot-api-client/sample-apps
COPY ./spec /hubspot-api-client/spec
COPY ./Gemfile /hubspot-api-client/Gemfile
COPY ./Gemfile.lock /hubspot-api-client/Gemfile.lock
COPY ./hubspot-api-client.gemspec /hubspot-api-client/hubspot-api-client.gemspec

WORKDIR /hubspot-api-client/sample-apps/oauth-app
RUN bundle install

# Add a script to be executed every time the container starts.
COPY ./sample-apps/oauth-app/docker-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
