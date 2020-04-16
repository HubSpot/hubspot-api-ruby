module Hubspot
  module Helpers
    module GetAllHelper
      MAX_PAGE_SIZE = 100
      # List
      # Read all contacts. Control what is returned via the `properties` query param.
      # @param [Hash] opts the optional parameters
      # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
      # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
      # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
      # @return Array
      def get_all(opts = {})
        after = nil
        objects = []
        loop do
          page_opts = opts.merge(limit: MAX_PAGE_SIZE, after: after)
          page = get_page(page_opts)
          objects.concat(page.results)
          break objects if page.paging.nil?

          after = page.paging._next.after
        end

      end
    end
  end
end