# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Customers
        # @return [Stigg::Resources::V1::Customers::PaymentMethod]
        attr_reader :payment_method

        # @return [Stigg::Resources::V1::Customers::PromotionalEntitlements]
        attr_reader :promotional_entitlements

        # Get a single customer by ID
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
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

        # Update a customer
        #
        # @overload update(id, coupon_id: nil, email: nil, integrations: nil, metadata: nil, name: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param coupon_id [String, nil] Customer level coupon
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

        # Get a list of customers
        #
        # @overload list(after: nil, before: nil, limit: nil, request_options: {})
        #
        # @param after [String] Return items that come after this cursor
        #
        # @param before [String] Return items that come before this cursor
        #
        # @param limit [Integer] Maximum number of items to return
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::CustomerListResponse>]
        #
        # @see Stigg::Models::V1::CustomerListParams
        def list(params = {})
          parsed, options = Stigg::V1::CustomerListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "api/v1/customers",
            query: parsed,
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::CustomerListResponse,
            options: options
          )
        end

        # Archive customer
        #
        # @overload archive(id, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
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

        # Bulk import customers
        #
        # @overload import(customers:, request_options: {})
        #
        # @param customers [Array<Stigg::Models::V1::CustomerImportParams::Customer>] List of customer objects to import
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerImportResponse]
        #
        # @see Stigg::Models::V1::CustomerImportParams
        def import(params)
          parsed, options = Stigg::V1::CustomerImportParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/customers/import",
            body: parsed,
            model: Stigg::Models::V1::CustomerImportResponse,
            options: options
          )
        end

        # Provision customer
        #
        # @overload provision(id:, coupon_id: nil, default_payment_method: nil, email: nil, integrations: nil, metadata: nil, name: nil, request_options: {})
        #
        # @param id [String] Customer slug
        #
        # @param coupon_id [String, nil] Customer level coupon
        #
        # @param default_payment_method [Stigg::Models::V1::CustomerProvisionParams::DefaultPaymentMethod, nil] The default payment method details
        #
        # @param email [String, nil] The email of the customer
        #
        # @param integrations [Array<Stigg::Models::V1::CustomerProvisionParams::Integration>] List of integrations
        #
        # @param metadata [Hash{Symbol=>String}] Additional metadata
        #
        # @param name [String, nil] The name of the customer
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerResponse]
        #
        # @see Stigg::Models::V1::CustomerProvisionParams
        def provision(params)
          parsed, options = Stigg::V1::CustomerProvisionParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/customers",
            body: parsed,
            model: Stigg::V1::CustomerResponse,
            options: options
          )
        end

        # Unarchive customer
        #
        # @overload unarchive(id, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
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
          @promotional_entitlements = Stigg::Resources::V1::Customers::PromotionalEntitlements.new(client: client)
        end
      end
    end
  end
end
