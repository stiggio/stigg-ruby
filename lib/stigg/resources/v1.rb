# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      # @return [Stigg::Resources::V1::Permissions]
      attr_reader :permissions

      # Get a single customer by id
      #
      # @overload retrieve_customer(ref_id, x_api_key:, x_environment_id:, request_options: {})
      #
      # @param ref_id [String]
      #
      # @param x_api_key [String] API Key
      #
      # @param x_environment_id [String]
      #
      # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Stigg::Models::V1RetrieveCustomerResponse]
      #
      # @see Stigg::Models::V1RetrieveCustomerParams
      def retrieve_customer(ref_id, params)
        parsed, options = Stigg::V1RetrieveCustomerParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/v1/customers/%1$s", ref_id],
          headers: parsed.transform_keys(x_api_key: "x-api-key", x_environment_id: "x-environment-id"),
          model: Stigg::Models::V1RetrieveCustomerResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Stigg::Client]
      def initialize(client:)
        @client = client
        @permissions = Stigg::Resources::V1::Permissions.new(client: client)
      end
    end
  end
end
