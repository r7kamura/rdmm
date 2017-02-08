module Rdmm
  module Responses
    class ListAuthorsResponse < BaseResponse
      # @note Override
      def resources
        (body["result"]["author"] || []).map do |source|
          ::Rdmm::Resources::AuthorResource.new(source)
        end
      end
    end
  end
end
