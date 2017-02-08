module Rdmm
  module Responses
    class ListActressesResponse < BaseResponse
      # @note Override
      def resources
        body["result"]["actress"].map do |source|
          ::Rdmm::Resources::ActressResource.new(source)
        end
      end
    end
  end
end
