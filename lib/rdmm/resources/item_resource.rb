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

      # @return [Array]
      def authors
        Array(source["iteminfo"]["author"])
      end

      # @return [String, nil]
      def bandai_title_code
        if source["bandaiinfo"]
          source["bandaiinfo"]["titlecode"]
        end
      end

      # @return [String, nil]
      def category_name
        source["category_name"]
      end

      # @return [String, nil]
      def cd_kind
        if source["cdinfo"]
          source["cdinfo"]["kind"]
        end
      end

      # @return [Boolean, nil]
      def compatible_with_pc?
        if source["sampleMovieURL"]
          source["sampleMovieURL"]["pc_flag"]
        end
      end

      # @return [Boolean, nil]
      def compatible_with_sp?
        if source["sampleMovieURL"]
          source["sampleMovieURL"]["sp_flag"]
        end
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

      # @return [String, nil]
      def isbn
        source["isbn"]
      end

      # @return [String, nil]
      def jancode
        source["jancode"]
      end

      # @return [Array]
      def labels
        Array(source["iteminfo"]["label"])
      end

      # @return [String, nil]
      def maker_product
        source["maker_product"]
      end

      # @return [Array]
      def makers
        Array(source["iteminfo"]["maker"])
      end

      # @return [Integer, nil]
      def number
        source["number"]
      end

      # @return [String, nil]
      def price
        if source["prices"]
          source["prices"]["price"]
        end
      end

      # @return [Array<Hash>]
      def price_deliveries
        if source["prices"] && source["prices"]["deliveries"] && source["prices"]["deliveries"]["delivery"]
          source["prices"]["deliveries"]["delivery"]
        else
          []
        end
      end

      # @note May not be a Integer
      # @return [Integer, nil]
      def price_proper
        if source["prices"]
          source["prices"]["proper"]
        end
      end

      # @return [String, nil]
      def product_id
        source["product_id"]
      end

      # @return [String, nil]
      def stock
        source["stock"]
      end

      # @return [Time, nil]
      def released_at
        if source["date"]
          ::Time.parse(source["date"])
        end
      end

      # @return [Integer, nil]
      def review_average
        source["review"]["average"]
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

      # @return [Object]
      def stock
        source["stock"]
      end

      # @return [String, nil]
      def title
        source["title"]
      end

      # @return [String, nil]
      def url
        source["URL"]
      end

      # @return [String, nil]
      def url_affiliate
        source["affiliateURL"]
      end

      # @return [String, nil]
      def url_image_large
        if source["imageURL"]
          source["imageURL"]["large"]
        end
      end

      # @return [String, nil]
      def url_image_list
        if source["imageURL"]
          source["imageURL"]["list"]
        end
      end

      # @return [String, nil]
      def url_image_small
        if source["imageURL"]
          source["imageURL"]["small"]
        end
      end

      # @return [Array<String>]
      def url_image_samples
        if source["sampleImageURL"] && source["sampleImageURL"]["sample_s"] && source["sampleImageURL"]["sample_s"]["image"]
          source["sampleImageURL"]["sample_s"]["image"]
        else
          []
        end
      end

      # @return [String, nil]
      def url_movie_sample_size_476_306
        if source["sampleMovieURL"]
          source["sampleMovieURL"]["size_476_306"]
        end
      end

      # @return [String, nil]
      def url_movie_sample_size_560_360
        if source["sampleMovieURL"]
          source["sampleMovieURL"]["size_560_360"]
        end
      end

      # @return [String, nil]
      def url_movie_sample_size_644_414
        if source["sampleMovieURL"]
          source["sampleMovieURL"]["size_644_414"]
        end
      end

      # @return [String, nil]
      def url_movie_sample_size_720_480
        if source["sampleMovieURL"]
          source["sampleMovieURL"]["size_720_480"]
        end
      end

      # @return [String, nil]
      def url_sp
        source["URLsp"]
      end

      # @return [String, nil]
      def url_sp_affiliate
        source["affiliateURLsp"]
      end

      # @return [String, nil]
      def url_tachiyomi
        if source["tachiyomi"]
          source["tachiyomi"]["URL"]
        end
      end

      # @return [String, nil]
      def url_tachiyomi_affiliate
        if source["tachiyomi"]
          source["tachiyomi"]["affilaiteURL"]
        end
      end

      # @return [Integer, nil]
      def volume
        source["volume"]
      end
    end
  end
end
