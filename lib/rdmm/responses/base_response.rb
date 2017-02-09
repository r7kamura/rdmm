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

      # @return [Hash, nil]
      def errors
        body["result"]["errors"]
      end

      # @return [Boolean]
      def has_error?
        status != 200
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

      # @return [String, nil]
      def message
        body["result"]["message"]
      end

      # @return [Integer, nil]
      def next_page_offset
        if has_next_page?
          first_position + result_count
        end
      end

      # @return [Array<Rdmm::Resources::BaseResource>]
      def resources
        (sources || []).map do |source|
          resource_class.new(source)
        end
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

      # @private
      # @return [Faraday::Response]
      def faraday_response
        @faraday_response
      end

      # @private
      # @return [Class]
      def resource_class
        raise ::NotImplementedError
      end

      # @private
      # @return [Array<Hash>, nil]
      def sources
        raise ::NotImplementedError
      end
    end
  end
end
