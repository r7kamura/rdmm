require "date"

module Rdmm
  module Resources
    class ActressResource < BaseResource
      # @return [Date, nil]
      def birthday
        if source["birthday"]
          ::Date.parse(source["birthday"])
        end
      end

      # @return [String, nil]
      def blood_type
        source["blood_type"]
      end

      # @return [Integer, nil]
      def bust
        source["bust"]
      end

      # @return [String, nil]
      def cup
        source["cup"]
      end

      # @return [Integer, nil]
      def height
        source["height"]
      end

      # @return [Array<String>]
      def hobbies
        if source["hobby"]
          source["hobby"].split("、")
        else
          []
        end
      end

      # @return [Integer, nil]
      def id
        source["id"]
      end

      # @return [String, nil]
      def image_url_large
        if source["imageURL"]
          source["imageURL"]["large"]
        end
      end

      # @return [String, nil]
      def image_url_small
        if source["imageURL"]
          source["imageURL"]["small"]
        end
      end

      # @return [String, nil]
      def list_url_digital
        source["listURL"]["digital"]
      end

      # @return [String, nil]
      def list_url_mono
        source["listURL"]["mono"]
      end

      # @return [String, nil]
      def list_url_monthly
        source["listURL"]["monthly"]
      end

      # @return [String, nil]
      def list_url_ppm
        source["listURL"]["ppm"]
      end

      # @return [String, nil]
      def list_url_rental
        source["listURL"]["rental"]
      end

      # @return [String, nil]
      def name
        source["name"]
      end

      # @return [String, nil]
      def prefectures
        unless source["prefectures"].nil? || source["prefectures"].empty?
          source["prefectures"]
        end
      end

      # @return [String, nil]
      def ruby
        source["ruby"]
      end

      # @return [Integer, nil]
      def waist
        source["waist"]
      end
    end
  end
end
