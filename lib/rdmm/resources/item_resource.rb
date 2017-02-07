module Rdmm
  module Resources
    class ItemResource < BaseResource
      # @return [String, nil]
      def affiliate_url
        source["affiliate_url"]
      end

      # @return [String, nil]
      def category_name
        source["category_name"]
      end

      # @return [String, nil]
      def content_id
        source["content_id"]
      end

      # @return [String, nil]
      def floor_code
        source["floor_code"]
      end

      # @return [String, nil]
      def floor_name
        source["floor_name"]
      end

      # @return [Hash, nil]
      def iteminfo
        source["iteminfo"]
      end

      # @return [Hash, nil]
      def prices
        source["prices"]
      end

      # @return [String, nil]
      def product_id
        source["product_id"]
      end

      # @return [Time, nil]
      def released_at
        if source["date"]
          ::Time.parse(source["date"])
        end
      end

      # @return [Hash, nil]
      def review
        source["review"]
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
      def title
        source["title"]
      end

      # @return [String, nil]
      def url
        source["url"]
      end

      # @return [Integer, nil]
      def volume
        source["volume"]
      end
    end
  end
end
