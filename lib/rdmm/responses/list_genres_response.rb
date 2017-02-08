module Rdmm
  module Responses
    class ListGenresResponse < BaseResponse
      # @note Override
      def resources
        body["result"]["genre"].map do |source|
          ::Rdmm::Resources::GenreResource.new(source)
        end
      end
    end
  end
end
