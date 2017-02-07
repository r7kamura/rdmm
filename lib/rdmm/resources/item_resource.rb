require "time"

module Rdmm
  module Resources
    class ItemResource < BaseResource
      # @return [Array]
      def actresses
        Array(source["iteminfo"]["actress"])
      end

      # @return [Array]
      def actors
        Array(source["iteminfo"]["actor"])
      end

      # @return [String, nil]
      def affiliate_url
        source["affiliate_url"]
      end

      # @return [Array]
      def authors
        Array(source["iteminfo"]["author"])
      end

      # @return [String, nil]
      def category_name
        source["category_name"]
      end

      # @return [String, nil]
      def content_id
        source["content_id"]
      end

      # @return [Array]
      def directors
        Array(source["iteminfo"]["director"])
      end

      # @return [String, nil]
      def floor_code
        source["floor_code"]
      end

      # @return [String, nil]
      def floor_name
        source["floor_name"]
      end

      # @return [Array]
      def genres
        Array(source["iteminfo"]["genre"])
      end

      # @return [Array]
      def labels
        Array(source["iteminfo"]["label"])
      end

      # @return [Array]
      def makers
        Array(source["iteminfo"]["maker"])
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

      # @return [Integer, nil]
      def review_avarage
        source["review"]["count"]
      end

      # @return [Float, nil]
      def review_count
        source["review"]["count"]
      end

      # @return [Array]
      def series
        Array(source["iteminfo"]["series"])
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
