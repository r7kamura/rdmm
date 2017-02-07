module Rdmm
  module Queries
    class BaseQuery
      class << self
        attr_writer :property_names

        # @note Override
        def inherited(child_class)
          child_class.property_names = property_names.clone
        end

        # @return [Array<Symbol>]
        def property_names
          @property_names ||= []
        end

        # @param property_name [Symbol]
        def property(property_name)
          property_names << property_name
        end
      end

      property :affiliate_id
      property :api_id
      property :hits
      property :offset

      # @param options [Hash]
      def initialize(options = {})
        @options = options
      end

      # @return [String]
      def affiliate_id
        options[:affiliate_id]
      end

      # @return [String]
      def api_id
        options[:api_id]
      end

      # @return [Integer, nil]
      def hits
        options[:hits]
      end

      # @return [Integer, nil]
      def offset
        options[:offset]
      end

      # @return [Hash]
      def to_hash
        self.class.property_names.each_with_object({}) do |property_name, result|
          value = send(property_name)
          unless value.nil?
            result[property_name.to_s] = value
          end
        end
      end

      private

      # @return [Hash]
      def options
        @options
      end
    end
  end
end
