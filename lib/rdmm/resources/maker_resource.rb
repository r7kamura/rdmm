module Rdmm
  module Resources
    class MakerResource < BaseResource
      # @return [String, nil]
      def list_url
        source["list_url"]
      end

      # @return [Integer, nil]
      def maker_id
        source["maker_id"]
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
