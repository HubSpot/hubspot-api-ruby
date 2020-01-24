FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /ruby-hubspot-3

COPY ./lib /ruby-hubspot-3/lib
COPY ./sample-apps /ruby-hubspot-3/sample-apps
COPY ./spec /ruby-hubspot-3/spec
COPY ./Gemfile /ruby-hubspot-3/Gemfile
COPY ./Gemfile.lock /ruby-hubspot-3/Gemfile.lock
COPY ./ruby-hubspot-3.gemspec /ruby-hubspot-3/ruby-hubspot-3.gemspec

WORKDIR /ruby-hubspot-3/sample-apps/companies-app
RUN bundle install

# Add a script to be executed every time the container starts.
COPY ./sample-apps/companies-app/docker-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
