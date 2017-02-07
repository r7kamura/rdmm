module Rdmm
  module Resources
    class BaseResource
      # @return [Hash]
      attr_reader :source

      # @param source [Hash]
      def initialize(source)
        @source = source
      end
    end
  end
end
