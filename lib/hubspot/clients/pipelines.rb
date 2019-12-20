Dir["#{ROOT_PATH}/hubspot/codegen/crm/pipelines/**/*.rb"].each { |f| require f }

module Hubspot
  module Clients
    class Pipelines < Clients::Base

    end
  end
end