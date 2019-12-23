Dir["#{ROOT_PATH}/hubspot/codegen/crm/pipelines/**/*.rb"].each { |f| require f }

module Hubspot
  module Clients
    class Pipelines < Clients::Base
      API = %w[PipelineStagesApi PipelinesApi]

      API.each do |api_name|
        define_method(Util.underscore(api_name)) do
          api_class = Hubspot.const_get("Client::Crm::Pipelines::Api::#{api_name}")
          api_class.new(@api_client)
        end
      end
    end
  end
end