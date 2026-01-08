# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Customers
        # @return [Stigg::Resources::V1::Customers::PaymentMethod]
        attr_reader :payment_method

        # @return [Stigg::Resources::V1::Customers::Usage]
        attr_reader :usage

        # @return [Stigg::Resources::V1::Customers::Promotional]
        attr_reader :promotional

        # Create a new Customer
        #
        # @overload create(email:, external_id:, name:, default_payment_method: nil, integrations: nil, metadata: nil, request_options: {})
        #
        # @param email [String, nil] The email of the customer
        #
        # @param external_id [String] Customer slug
        #
        # @param name [String, nil] The name of the customer
        #
        # @param default_payment_method [Stigg::Models::V1::CustomerCreateParams::DefaultPaymentMethod, nil] The default payment method details
        #
        # @param integrations [Array<Stigg::Models::V1::CustomerCreateParams::Integration>] List of integrations
        #
        # @param metadata [Hash{Symbol=>String}] Additional metadata
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerResponse]
        #
        # @see Stigg::Models::V1::CustomerCreateParams
        def create(params)
          parsed, options = Stigg::V1::CustomerCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/customers",
            body: parsed,
            model: Stigg::V1::CustomerResponse,
            options: options
          )
        end

        # Get a single Customer by id
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String]
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerResponse]
        #
        # @see Stigg::Models::V1::CustomerRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["api/v1/customers/%1$s", id],
            model: Stigg::V1::CustomerResponse,
            options: params[:request_options]
          )
        end

        # Update an existing Customer
        #
        # @overload update(id, email: nil, integrations: nil, metadata: nil, name: nil, request_options: {})
        #
        # @param id [String]
        #
        # @param email [String, nil] The email of the customer
        #
        # @param integrations [Array<Stigg::Models::V1::CustomerUpdateParams::Integration>] List of integrations
        #
        # @param metadata [Hash{Symbol=>String}] Additional metadata
        #
        # @param name [String, nil] The name of the customer
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerResponse]
        #
        # @see Stigg::Models::V1::CustomerUpdateParams
        def update(id, params = {})
          parsed, options = Stigg::V1::CustomerUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["api/v1/customers/%1$s", id],
            body: parsed,
            model: Stigg::V1::CustomerResponse,
            options: options
          )
        end

        # Get a list of Customers
        #
        # @overload list(ending_before: nil, limit: nil, starting_after: nil, request_options: {})
        #
        # @param ending_before [String] Ending before this UUID for pagination
        #
        # @param limit [Integer] Items per page
        #
        # @param starting_after [String] Starting after this UUID for pagination
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerListResponse]
        #
        # @see Stigg::Models::V1::CustomerListParams
        def list(params = {})
          parsed, options = Stigg::V1::CustomerListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "api/v1/customers",
            query: parsed.transform_keys(ending_before: "endingBefore", starting_after: "startingAfter"),
            model: Stigg::Models::V1::CustomerListResponse,
            options: options
          )
        end

        # Perform archive on a Customer
        #
        # @overload archive(id, request_options: {})
        #
        # @param id [String]
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerResponse]
        #
        # @see Stigg::Models::V1::CustomerArchiveParams
        def archive(id, params = {})
          @client.request(
            method: :post,
            path: ["api/v1/customers/%1$s/archive", id],
            model: Stigg::V1::CustomerResponse,
            options: params[:request_options]
          )
        end

        # Perform unarchive on a Customer
        #
        # @overload unarchive(id, request_options: {})
        #
        # @param id [String]
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerResponse]
        #
        # @see Stigg::Models::V1::CustomerUnarchiveParams
        def unarchive(id, params = {})
          @client.request(
            method: :post,
            path: ["api/v1/customers/%1$s/unarchive", id],
            model: Stigg::V1::CustomerResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
          @payment_method = Stigg::Resources::V1::Customers::PaymentMethod.new(client: client)
          @usage = Stigg::Resources::V1::Customers::Usage.new(client: client)
          @promotional = Stigg::Resources::V1::Customers::Promotional.new(client: client)
        end
      end
    end
  end
end
