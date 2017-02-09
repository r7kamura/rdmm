module Rdmm
  module Responses
    class ListAuthorsResponse < BaseResponse
      private

      # @note Override
      def resource_class
        ::Rdmm::Resources::AuthorResource
      end

      # @note Override
      def sources
        body["result"]["author"]
      end
    end
  end
end
