module Rdmm
  module Responses
    class ListGenresResponse < BaseResponse
      private

      # @note Override
      def resource_class
        ::Rdmm::Resources::GenreResource
      end

      # @note Override
      def sources
        body["result"]["genre"]
      end
    end
  end
end
