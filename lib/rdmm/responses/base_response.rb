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

      # @return [Integer]
      def first_position
        body["result"]["first_position"]
      end

      # @return [Boolean]
      def has_next_page?
        first_position - 1 + result_count < total_count
      end

      # @return [Faraday::Utils::Headers]
      def headers
        faraday_response.headers
      end

      # @return [Integer, nil]
      def next_page_offset
        if has_next_page?
          first_position + result_count
        end
      end

      # @return [Array<Rdmm::Resources::BaseResource>]
      def resources
        raise ::NotImplementedError
      end

      # @return [Integer]
      def result_count
        body["result"]["result_count"]
      end

      # @return [Integer]
      def status
        faraday_response.status
      end

      # @return [Integer]
      def total_count
        body["result"]["total_count"].to_i
      end

      private

      # @return [Faraday::Response]
      def faraday_response
        @faraday_response
      end
    end
  end
end
