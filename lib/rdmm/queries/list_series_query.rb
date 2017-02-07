module Rdmm
  module Queries
    class ListSeriesQuery < BaseQuery
      property :floor_id
      property :initial

      # @return [Integer, nil]
      def floor_id
        options[:floor_id]
      end

      # @return [String, nil]
      def initial
        options[:initial]
      end
    end
  end
end
