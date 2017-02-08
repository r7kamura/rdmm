module Rdmm
  module Resources
    class GenreResource < BaseResource
      # @return [Integer, nil]
      def id
        source["genre_id"]
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
