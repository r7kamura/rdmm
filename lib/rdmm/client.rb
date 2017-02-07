require "faraday"
require "faraday_middleware"

module Rdmm
  class Client
    BASE_URL = "https://api.dmm.com"
    PATH_TO_LIST_ITEMS = "/affiliate/v3/ItemList"

    # @param affiliate_id [String]
    # @param api_id [String]
    def initialize(affiliate_id:, api_id:)
      @affiliate_id = affiliate_id
      @api_id = api_id
    end

    # @return [Faraday::Connection]
    def connection
      @connection ||= ::Faraday::Connection.new(url: BASE_URL) do |connection|
        connection.adapter :net_http
        connection.response :json
        connection.response :raise_error
      end
    end

    # @param options [Hash]
    # @return [Rdmm::Responses::ListItemsResponse]
    def list_items(options = {})
      query_options = default_query_options.merge(options)
      query = ::Rdmm::Queries::ListItemsQuery.new(query_options)
      faraday_response = get(PATH_TO_LIST_ITEMS, query.to_hash)
      ::Rdmm::Responses::ListItemsResponse.new(faraday_response)
    end

    private

    # @return [Hash]
    def default_query_options
      {
        affiliate_id: @affiliate_id,
        api_id: @api_id,
      }
    end

    # @private
    # @param path [String]
    # @param query [Hash]
    # @return [Faraday::Response]
    def get(path, query)
      connection.get(path, query)
    end
  end
end
