module Rdmm
  module Responses
    class ListItemsResponse < BaseResponse
      private

      # @note Override
      def resource_class
        ::Rdmm::Resources::ItemResource
      end

      # @note Override
      def sources
        body["result"]["items"]
      end
    end
  end
end
