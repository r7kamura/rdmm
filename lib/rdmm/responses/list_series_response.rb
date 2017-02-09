module Rdmm
  module Responses
    class ListSeriesResponse < BaseResponse
      private

      # @note Override
      def resource_class
        ::Rdmm::Resources::SeriesResource
      end

      # @note Override
      def sources
        body["result"]["series"]
      end
    end
  end
end
