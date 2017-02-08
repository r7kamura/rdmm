module Rdmm
  module Responses
    class ListMakersResponse < BaseResponse
      # @note Override
      def resources
        body["result"]["maker"].map do |source|
          ::Rdmm::Resources::MakerResource.new(source)
        end
      end
    end
  end
end
