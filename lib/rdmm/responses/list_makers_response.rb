module Rdmm
  module Responses
    class ListMakersResponse < BaseResponse
      private

      # @note Override
      def resource_class
        ::Rdmm::Resources::MakerResource
      end

      # @note Override
      def sources
        body["result"]["maker"]
      end
    end
  end
end
