module Rdmm
  module Queries
    class ListItemsQuery < BaseQuery
      property :article
      property :article_id
      property :cid
      property :floor
      property :gte_date
      property :hits
      property :keyword
      property :lte_date
      property :mono_stock
      property :offset
      property :service
      property :site
      property :sort

      # @note One of the following values:
      #   "actress"
      #   "author"
      #   "genre"
      #   "maker"
      #   "series"
      # @return [String, nil]
      def article
        options[:article]
      end

      # @return [String, nil]
      def article_id
        options[:article_id]
      end

      # @return [String, nil]
      def cid
        options[:content_id]
      end

      # @note floor code
      # @return [String, nil]
      def floor
        options[:floor]
      end

      # @return [String, nil]
      def gte_date
        if options[:released_from]
          format_time(options[:released_from])
        end
      end

      # @return [Integer, nil]
      def hits
        options[:hits]
      end

      # @return [String, nil]
      def keyword
        options[:keyword]
      end

      # @return [String, nil]
      def lte_date
        if options[:released_to]
          format_time(options[:released_to])
        end
      end

      # @note One of the following values:
      #   "dmp"
      #   "mono"
      #   "reserve"
      #   "stock"
      # @return [String, nil]
      def mono_stock
        options[:mono_stock]
      end

      # @return [Integer, nil]
      def offset
        options[:offset]
      end

      # @note service code
      # @return [String, nil]
      def service
        options[:service]
      end

      # @note One of the following values:
      #   "DMM.com"
      #   "DMM.R18"
      # @return [String, nil]
      def site
        options[:site]
      end

      # @note One of the following values:
      #   "-price"
      #   "date"
      #   "price"
      #   "rank"
      #   "review"
      # @return [String, nil]
      def sort
        options[:sort]
      end

      private

      # @param time [Time]
      # @return [String]
      def format_time(time)
        time.strftime("%Y-%m-%dT%H:%M:%S")
      end
    end
  end
end
