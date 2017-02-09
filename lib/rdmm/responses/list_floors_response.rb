module Rdmm
  module Responses
    class ListFloorsResponse < BaseResponse
      private

      # @note Override
      def resource_class
        ::Rdmm::Resources::FloorResource
      end

      # @note Override
      def sources
        body["result"]["site"].flat_map do |site_source|
          site_source["service"].flat_map do |service_source|
            service_source["floor"].map do |source|
              source.merge(
                "site_code" => site_source["code"],
                "site_name" => site_source["name"],
                "service_code" => service_source["code"],
                "service_name" => service_source["name"],
              )
            end
          end
        end
      end
    end
  end
end
