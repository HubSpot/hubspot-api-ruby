require_relative 'snake_case'

module Hubspot
  module Helpers
    class Path
      def format(module_name)
        Hubspot::Helpers::SnakeCase.new.format(module_name.to_s)
      end

      def require_with_mapping(path)
        require path.gsub('o_auth', 'oauth')
      end

      def require_with_codegen_mapping(path)
        require path
          .gsub('o_auth', 'oauth')
          .gsub('audit_logs/', 'audit-logs/')
          .gsub('blog_posts/', 'blog-posts/')
          .gsub('site_search', 'site-search')
          .gsub('source_code/', 'source-code/')
          .gsub('url_redirects', 'url-redirects')
          .gsub('visitor_identification', 'visitor-identification')
      end
    end
  end
end
