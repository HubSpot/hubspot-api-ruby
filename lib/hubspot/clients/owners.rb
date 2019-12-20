Dir["#{ROOT_PATH}/hubspot/clients/*.rb"]
Dir["#{ROOT_PATH}/hubspot/codegen/crm/owners/**/*.rb"].each { |f| require f }

module Hubspot
  module Clients
    class Owners < Clients::Base

    end
  end
end