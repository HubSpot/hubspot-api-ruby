FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /ruby-hubspot-3
COPY . /ruby-hubspot-3

WORKDIR /ruby-hubspot-3/sample-apps/contacts-app
RUN bundle install

# Add a script to be executed every time the container starts.
COPY ./sample-apps/contacts-app/docker-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
