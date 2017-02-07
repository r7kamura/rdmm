module Rdmm
  module Resources
    class SeriesResource < BaseResource
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

      # @return [Integer]
      def series_id
        source["series_id"]
      end
    end
  end
end
