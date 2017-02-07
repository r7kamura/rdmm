module Rdmm
  module Resources
    class ItemResource < BaseResource
      # @return [String, nil]
      def title
        source["title"]
      end
    end
  end
end
