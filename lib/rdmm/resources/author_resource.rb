module Rdmm
  module Resources
    class AuthorResource < BaseResource
      # @return [String, nil]
      def another_name
        source["another_name"]
      end

      # @return [Integer, nil]
      def id
        source["author_id"]
      end

      # @return [String, nil]
      def list_url
        source["list_url"]
      end

      # @return [String, nil]
      def name
        source["name"]
      end

      # @return [String, nil]
      def ruby
        source["ruby"]
      end
    end
  end
end
