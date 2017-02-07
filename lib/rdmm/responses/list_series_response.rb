module Rdmm
  module Responses
    class ListSeriesResponse < BaseResponse
      # @note Override
      def resources
        body["result"]["series"].map do |source|
          ::Rdmm::Resources::SeriesResource.new(source)
        end
      end
    end
  end
end
