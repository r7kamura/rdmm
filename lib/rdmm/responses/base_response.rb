module Rdmm
  module Responses
    class BaseResponse
      include ::Enumerable

      # @param faraday_response [Faraday::Response]
      def initialize(faraday_response)
        @faraday_response = faraday_response
      end

      # @return [String]
      def body
        faraday_response.body
      end

      # @note Implementation for Enumerable
      def each(&block)
        resources.each(&block)
      end

      # @return [Faraday::Utils::Headers]
      def headers
        faraday_response.headers
      end

      # @return [Rdmm::Resources::BaseResource]
      def resources
        raise ::NotImplementedError
      end

      # @return [Integer]
      def status
        faraday_response.status
      end

      private

      # @return [Faraday::Response]
      def faraday_response
        @faraday_response
      end
    end
  end
end
