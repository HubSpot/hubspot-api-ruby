=begin
#CRM Pipelines

#Pipelines represent distinct stages in a workflow, like closing a deal or servicing a support ticket. These endpoints provide access to read and modify pipelines in HubSpot. Pipelines support `deals` and `tickets` object types.  ## Pipeline ID validation  When calling endpoints that take pipelineId as a parameter, that ID must correspond to an existing, un-archived pipeline. Otherwise the request will fail with a `404 Not Found` response.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

module Hubspot
  module Client
    module Crm
      module Pipelines
        class ApiError < StandardError
          attr_reader :code, :response_headers, :response_body

          # Usage examples:
          #   ApiError.new
          #   ApiError.new("message")
          #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
          #   ApiError.new(:code => 404, :message => "Not Found")
          def initialize(arg = nil)
            if arg.is_a? Hash
              if arg.key?(:message) || arg.key?('message')
                super(arg[:message] || arg['message'])
              else
                super arg
              end

              arg.each do |k, v|
                instance_variable_set "@#{k}", v
              end
            else
              super arg
            end
          end

          # Override to_s to display a friendly error message
          def to_s
            message
          end

          def message
            if @message.nil?
              msg = "Error message: the server returns an error"
            else
              msg = @message
            end

            msg += "\nHTTP status code: #{code}" if code
            msg += "\nResponse headers: #{response_headers}" if response_headers
            msg += "\nResponse body: #{response_body}" if response_body

            msg
          end
        end
      end
    end
  end
end