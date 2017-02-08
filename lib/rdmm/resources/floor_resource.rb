module Rdmm
  module Resources
    class FloorResource < BaseResource
      # @return [String, nil]
      def code
        source["code"]
      end

      # @return [Integer, nil]
      def id
        source["id"]
      end

      # @return [String, nil]
      def name
        source["name"]
      end

      # @return [String, nil]
      def service_code
        source["service_code"]
      end

      # @return [String, nil]
      def service_name
        source["service_name"]
      end

      # @return [String, nil]
      def site_code
        source["site_code"]
      end

      # @return [String, nil]
      def site_name
        source["site_name"]
      end
    end
  end
end
