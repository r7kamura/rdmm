module Rdmm
  module Queries
    class ListActressesQuery < BaseQuery
      property :actress_id
      property :birthday
      property :bust
      property :height
      property :hip
      property :hits
      property :initial
      property :keyword
      property :offset
      property :sort
      property :waist

    # @return [Integer, nil]
      def actress_id
        options[:id]
      end

      # @return [String, nil]
      def birthday
        format_from_and_to(options[:birthday_from], options[:birthday_to])
      end

      # @return [String, nil]
      def bust
        format_from_and_to(options[:bust_from], options[:bust_to])
      end

      # @return [String, nil]
      def height
        format_from_and_to(options[:height_from], options[:height_to])
      end

      # @return [String, nil]
      def hip
        format_from_and_to(options[:hip_from], options[:hip_from])
      end

      # @return [Integer, nil]
      def hits
        options[:hits]
      end

      # @return [String, nil]
      def initial
        options[:initial]
      end

      # @return [String, nil]
      def keyword
        options[:keyword]
      end

      # @return [Integer, nil]
      def offset
        options[:offset]
      end

      # @return [String, nil]
      def sort
        options[:sort]
      end

      # @return [String, nil]
      def waist
        format_from_and_to(options[:waist_from], options[:waist_from])
      end

      private

      # @return [String, nil]
      def format_from_and_to(from, to)
        if from || to
          [
            from.respond_to?(:strftime) ? from.strftime("%Y%m%d") : from,
            to.respond_to?(:strftime) ? to.strftime("%Y%m%d") : to,
          ].join("-")
        end
      end
    end
  end
end
