module Rdmm
  module Responses
    class ListItemsResponse < BaseResponse
      # @note Override
      def resources
        body["result"]["items"].map do |source|
          ::Rdmm::Resources::ItemResource.new(source)
        end
      end
    end
  end
end
