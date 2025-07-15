# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Customers
        # @return [Stigg::Resources::V1::Customers::SubCustomer]
        attr_reader :sub_customer

        # Get a single customer by id
        #
        # @overload retrieve(ref_id, x_api_key:, x_environment_id:, request_options: {})
        #
        # @param ref_id [String]
        #
        # @param x_api_key [String] API Key
        #
        # @param x_environment_id [String]
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerRetrieveResponse]
        #
        # @see Stigg::Models::V1::CustomerRetrieveParams
        def retrieve(ref_id, params)
          parsed, options = Stigg::V1::CustomerRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/v1/customers/%1$s", ref_id],
            headers: parsed.transform_keys(x_api_key: "x-api-key", x_environment_id: "x-environment-id"),
            model: Stigg::Models::V1::CustomerRetrieveResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
          @sub_customer = Stigg::Resources::V1::Customers::SubCustomer.new(client: client)
        end
      end
    end
  end
end
