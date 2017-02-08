module Rdmm
  module Queries
    class ListGenresQuery < BaseQuery
      property :floor_id
      property :hits
      property :initial
      property :offset

      # @return [Integer, nil]
      def floor_id
        options[:floor_id]
      end

      # @return [Integer, nil]
      def hits
        options[:hits]
      end

      # @return [String, nil]
      def initial
        options[:initial]
      end

      # @return [Integer, nil]
      def offset
        options[:offset]
      end
    end
  end
end
