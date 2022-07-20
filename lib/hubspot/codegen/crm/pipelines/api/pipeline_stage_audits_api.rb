=begin
#CRM Pipelines

#Pipelines represent distinct stages in a workflow, like closing a deal or servicing a support ticket. These endpoints provide access to read and modify pipelines in HubSpot. Pipelines support `deals` and `tickets` object types.  ## Pipeline ID validation  When calling endpoints that take pipelineId as a parameter, that ID must correspond to an existing, un-archived pipeline. Otherwise the request will fail with a `404 Not Found` response.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Pipelines
      class PipelineStageAuditsApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Return an audit of all changes to the pipeline stage
        # Return a reverse chronological list of all mutations that have occurred on the pipeline stage identified by `{stageId}`.
        # @param object_type [String] 
        # @param stage_id [String] 
        # @param [Hash] opts the optional parameters
        # @return [CollectionResponsePublicAuditInfoNoPaging]
        def get_audit(object_type, stage_id, opts = {})
          data, _status_code, _headers = get_audit_with_http_info(object_type, stage_id, opts)
          data
        end

        # Return an audit of all changes to the pipeline stage
        # Return a reverse chronological list of all mutations that have occurred on the pipeline stage identified by &#x60;{stageId}&#x60;.
        # @param object_type [String] 
        # @param stage_id [String] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(CollectionResponsePublicAuditInfoNoPaging, Integer, Hash)>] CollectionResponsePublicAuditInfoNoPaging data, response status code and response headers
        def get_audit_with_http_info(object_type, stage_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: PipelineStageAuditsApi.get_audit ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling PipelineStageAuditsApi.get_audit"
          end
          # verify the required parameter 'stage_id' is set
          if @api_client.config.client_side_validation && stage_id.nil?
            fail ArgumentError, "Missing the required parameter 'stage_id' when calling PipelineStageAuditsApi.get_audit"
          end
          # resource path
          local_var_path = '/crm/v3/pipelines/{objectType}/{pipelineId}/stages/{stageId}/audit'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s)).sub('{' + 'stageId' + '}', CGI.escape(stage_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'CollectionResponsePublicAuditInfoNoPaging' 

          # auth_names
          auth_names = opts[:auth_names] || ['oauth2']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: PipelineStageAuditsApi#get_audit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
