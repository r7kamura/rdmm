require "faraday"
require "faraday_middleware"

module Rdmm
  class Client
    BASE_URL = "https://api.dmm.com"
    PATH_TO_LIST_ACTRESSES = "/affiliate/v3/ActressSearch"
    PATH_TO_LIST_AUTHORS = "/affiliate/v3/AuthorSearch"
    PATH_TO_LIST_FLOORS = "/affiliate/v3/FloorList"
    PATH_TO_LIST_GENRES = "/affiliate/v3/GenreSearch"
    PATH_TO_LIST_ITEMS = "/affiliate/v3/ItemList"
    PATH_TO_LIST_MAKERS = "/affiliate/v3/MakerSearch"
    PATH_TO_LIST_SERIES = "/affiliate/v3/SeriesSearch"

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
      end
    end

    # @param options [Hash]
    # @return [Rdmm::Responses::ListActressesResponse]
    def list_actresses(options = {})
      list(
        query_class: ::Rdmm::Queries::ListActressesQuery,
        options: options,
        path: PATH_TO_LIST_ACTRESSES,
        response_class: ::Rdmm::Responses::ListActressesResponse,
      )
    end

    # @param options [Hash]
    # @return [Rdmm::Responses::ListAuthorsResponse]
    def list_authors(options = {})
      list(
        query_class: ::Rdmm::Queries::ListAuthorsQuery,
        options: options,
        path: PATH_TO_LIST_AUTHORS,
        response_class: ::Rdmm::Responses::ListAuthorsResponse,
      )
    end

    # @param options [Hash]
    # @return [Rdmm::Responses::ListFloorsResponse]
    def list_floors(options = {})
      list(
        query_class: ::Rdmm::Queries::ListFloorsQuery,
        options: options,
        path: PATH_TO_LIST_FLOORS,
        response_class: ::Rdmm::Responses::ListFloorsResponse,
      )
    end

    # @param options [Hash]
    # @return [Rdmm::Responses::ListGenresResponse]
    def list_genres(options = {})
      list(
        query_class: ::Rdmm::Queries::ListGenresQuery,
        options: options,
        path: PATH_TO_LIST_GENRES,
        response_class: ::Rdmm::Responses::ListGenresResponse,
      )
    end

    # @param options [Hash]
    # @return [Rdmm::Responses::ListItemsResponse]
    def list_items(options = {})
      list(
        query_class: ::Rdmm::Queries::ListItemsQuery,
        options: options,
        path: PATH_TO_LIST_ITEMS,
        response_class: ::Rdmm::Responses::ListItemsResponse,
      )
    end

    # @param options [Hash]
    # @return [Rdmm::Responses::ListMakersResponse]
    def list_makers(options = {})
      list(
        query_class: ::Rdmm::Queries::ListMakersQuery,
        options: options,
        path: PATH_TO_LIST_MAKERS,
        response_class: ::Rdmm::Responses::ListMakersResponse,
      )
    end

    # @param options [Hash]
    # @return [Rdmm::Responses::ListSeriesResponse]
    def list_series(options = {})
      list(
        query_class: ::Rdmm::Queries::ListSeriesQuery,
        options: options,
        path: PATH_TO_LIST_SERIES,
        response_class: ::Rdmm::Responses::ListSeriesResponse,
      )
    end

    private

    # @return [Hash]
    def default_query_options
      {
        affiliate_id: @affiliate_id,
        api_id: @api_id,
      }
    end

    # @param query_class [Class]
    # @param options [Hash]
    # @param path [String]
    # @param response_class [Class]
    # @return [Rdmm::Responses::BaseResponse]
    def list(query_class:, options:, path:, response_class:)
      query_options = default_query_options.merge(options)
      query = query_class.new(query_options)
      faraday_response = connection.get(path, query.to_hash)
      response_class.new(faraday_response)
    end
  end
end
