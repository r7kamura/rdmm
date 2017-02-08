module Rdmm
  module Resources
    class SeriesResource < BaseResource
      # @return [Integer]
      def id
        source["series_id"]
      end

      # @return [String]
      def list_url
        source["list_url"]
      end

      # @return [String]
      def name
        source["name"]
      end

      # @return [String]
      def ruby
        source["ruby"]
      end
    end
  end
end
