# frozen_string_literal: true

module Stigg
  module Resources
    class V2
      class Customers
        # @return [Stigg::Resources::V2::Customers::SubCustomer]
        attr_reader :sub_customer

        # Get a single customer by id
        #
        # @overload get_customer(ref_id, x_api_key:, x_environment_id:, request_options: {})
        #
        # @param ref_id [String]
        #
        # @param x_api_key [String] API Key
        #
        # @param x_environment_id [String]
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V2::CustomerGetCustomerResponse]
        #
        # @see Stigg::Models::V2::CustomerGetCustomerParams
        def get_customer(ref_id, params)
          parsed, options = Stigg::V2::CustomerGetCustomerParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/v1/customers/%1$s", ref_id],
            headers: parsed.transform_keys(x_api_key: "x-api-key", x_environment_id: "x-environment-id"),
            model: Stigg::Models::V2::CustomerGetCustomerResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
          @sub_customer = Stigg::Resources::V2::Customers::SubCustomer.new(client: client)
        end
      end
    end
  end
end
