module Rdmm
  module Responses
    class ListActressesResponse < BaseResponse
      private

      # @note Override
      def resource_class
        ::Rdmm::Resources::ActressResource
      end

      # @note Override
      def sources
        body["result"]["actress"]
      end
    end
  end
end
