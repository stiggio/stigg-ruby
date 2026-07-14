# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Customers
        # Operations related to customers
        # @return [Stigg::Resources::V1::Customers::PaymentMethod]
        attr_reader :payment_method

        # Operations related to promotional entitlements
        # @return [Stigg::Resources::V1::Customers::PromotionalEntitlements]
        attr_reader :promotional_entitlements

        # @return [Stigg::Resources::V1::Customers::Integrations]
        attr_reader :integrations

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CustomerRetrieveParams} for more details.
        #
        # Retrieves a customer by their unique identifier, including billing information
        # and subscription status.
        #
        # @overload retrieve(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerResponse]
        #
        # @see Stigg::Models::V1::CustomerRetrieveParams
        def retrieve(id, params = {})
          parsed, options = Stigg::V1::CustomerRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/v1/customers/%1$s", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::CustomerResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CustomerUpdateParams} for more details.
        #
        # Updates an existing customer's properties such as name, email, and billing
        # information.
        #
        # @overload update(id, billing_currency: nil, billing_id: nil, coupon_id: nil, email: nil, integrations: nil, language: nil, metadata: nil, name: nil, passthrough: nil, timezone: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param billing_currency [Symbol, Stigg::Models::V1::CustomerUpdateParams::BillingCurrency, nil] Body param: The billing currency of the customer
        #
        # @param billing_id [String, nil] Body param: The unique identifier for the entity in the billing provider
        #
        # @param coupon_id [String, Symbol, Stigg::Models::V1::CustomerUpdateParams::CouponID, nil] Body param: Customer level coupon
        #
        # @param email [String, nil] Body param: The email of the customer
        #
        # @param integrations [Array<Stigg::Models::V1::CustomerUpdateParams::Integration>] Body param: List of integrations
        #
        # @param language [String, nil] Body param: Language to use for this customer
        #
        # @param metadata [Hash{Symbol=>String}] Body param: Additional metadata
        #
        # @param name [String, nil] Body param: The name of the customer
        #
        # @param passthrough [Stigg::Models::V1::CustomerUpdateParams::Passthrough] Body param: Vendor-specific billing passthrough fields.
        #
        # @param timezone [String, nil] Body param: Timezone to use for this customer
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerResponse]
        #
        # @see Stigg::Models::V1::CustomerUpdateParams
        def update(id, params = {})
          parsed, options = Stigg::V1::CustomerUpdateParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :patch,
            path: ["api/v1/customers/%1$s", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::V1::CustomerResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CustomerListParams} for more details.
        #
        # Retrieves a paginated list of customers in the environment.
        #
        # @overload list(after: nil, before: nil, created_at: nil, email: nil, limit: nil, name: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param after [String] Query param: Return items that come after this cursor
        #
        # @param before [String] Query param: Return items that come before this cursor
        #
        # @param created_at [Stigg::Models::V1::CustomerListParams::CreatedAt] Query param: Filter by creation date using range operators: gt, gte, lt, lte
        #
        # @param email [String] Query param: Filter by exact customer email address
        #
        # @param limit [Integer] Query param: Maximum number of items to return
        #
        # @param name [String] Query param: Filter by exact customer name
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::CustomerListResponse>]
        #
        # @see Stigg::Models::V1::CustomerListParams
        def list(params = {})
          query_params = [:after, :before, :created_at, :email, :limit, :name]
          parsed, options = Stigg::V1::CustomerListParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: "api/v1/customers",
            query: query.transform_keys(created_at: "createdAt"),
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::CustomerListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CustomerArchiveParams} for more details.
        #
        # Archives a customer, preventing new subscriptions. Optionally cancels existing
        # subscriptions.
        #
        # @overload archive(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerResponse]
        #
        # @see Stigg::Models::V1::CustomerArchiveParams
        def archive(id, params = {})
          parsed, options = Stigg::V1::CustomerArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/customers/%1$s/archive", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::CustomerResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CustomerCheckEntitlementParams} for more details.
        #
        # Checks a single entitlement (feature or credit) for a customer or resource.
        # Supports `requestedUsage` and `requestedValues` to evaluate against limits or
        # enum values.
        #
        # **Warning:** This REST API endpoint lacks built-in client-side caching, fallback
        # mechanisms, and low-latency guarantees. It is not recommended for hot-path
        # entitlement checks. For production use, consider using the Stigg Node Server SDK
        # with caching or the Sidecar for low-latency cached responses.
        #
        # @overload check_entitlement(id, currency_id: nil, feature_id: nil, requested_usage: nil, requested_values: nil, resource_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param currency_id [String] Query param: Currency ID (refId) to check for credit entitlements. Mutually excl
        #
        # @param feature_id [String] Query param: Feature ID (refId) to check. Mutually exclusive with `currencyId`.
        #
        # @param requested_usage [Integer] Query param: Requested usage amount to evaluate against the entitlement limit (n
        #
        # @param requested_values [Array<String>] Query param: Requested values to evaluate against allowed values (enum features
        #
        # @param resource_id [String] Query param: Resource ID to scope the entitlement check to a specific resource
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerCheckEntitlementResponse]
        #
        # @see Stigg::Models::V1::CustomerCheckEntitlementParams
        def check_entitlement(id, params = {})
          query_params = [:currency_id, :feature_id, :requested_usage, :requested_values, :resource_id]
          parsed, options = Stigg::V1::CustomerCheckEntitlementParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: ["api/v1/customers/%1$s/entitlements/check", id],
            query: query.transform_keys(
              currency_id: "currencyId",
              feature_id: "featureId",
              requested_usage: "requestedUsage",
              requested_values: "requestedValues",
              resource_id: "resourceId"
            ),
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::Models::V1::CustomerCheckEntitlementResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CustomerImportParams} for more details.
        #
        # Imports multiple customers in bulk. Used for migrating customer data from
        # external systems.
        #
        # @overload import(customers:, integration_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param customers [Array<Stigg::Models::V1::CustomerImportParams::Customer>] Body param: List of customer objects to import
        #
        # @param integration_id [String] Body param: Integration details
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerImportResponse]
        #
        # @see Stigg::Models::V1::CustomerImportParams
        def import(params)
          parsed, options = Stigg::V1::CustomerImportParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/customers/import",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::Models::V1::CustomerImportResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CustomerListResourcesParams} for more details.
        #
        # Retrieves a paginated list of resources within the same customer.
        #
        # @overload list_resources(id, after: nil, before: nil, limit: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param after [String] Query param: Return items that come after this cursor
        #
        # @param before [String] Query param: Return items that come before this cursor
        #
        # @param limit [Integer] Query param: Maximum number of items to return
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::CustomerListResourcesResponse>]
        #
        # @see Stigg::Models::V1::CustomerListResourcesParams
        def list_resources(id, params = {})
          query_params = [:after, :before, :limit]
          parsed, options = Stigg::V1::CustomerListResourcesParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: ["api/v1/customers/%1$s/resources", id],
            query: query,
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::CustomerListResourcesResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CustomerProvisionParams} for more details.
        #
        # Creates a new customer.
        #
        # @overload provision(id:, billing_currency: nil, billing_id: nil, coupon_id: nil, default_payment_method: nil, email: nil, integrations: nil, language: nil, metadata: nil, name: nil, passthrough: nil, timezone: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Body param: Customer slug
        #
        # @param billing_currency [Symbol, Stigg::Models::V1::CustomerProvisionParams::BillingCurrency, nil] Body param: The billing currency of the customer
        #
        # @param billing_id [String, nil] Body param: The unique identifier for the entity in the billing provider
        #
        # @param coupon_id [String, Symbol, Stigg::Models::V1::CustomerProvisionParams::CouponID, nil] Body param: Customer level coupon
        #
        # @param default_payment_method [Stigg::Models::V1::CustomerProvisionParams::DefaultPaymentMethod, nil] Body param: The default payment method details
        #
        # @param email [String, nil] Body param: The email of the customer
        #
        # @param integrations [Array<Stigg::Models::V1::CustomerProvisionParams::Integration>] Body param: List of integrations
        #
        # @param language [String, nil] Body param: Language to use for this customer
        #
        # @param metadata [Hash{Symbol=>String}] Body param: Additional metadata
        #
        # @param name [String, nil] Body param: The name of the customer
        #
        # @param passthrough [Stigg::Models::V1::CustomerProvisionParams::Passthrough] Body param: Vendor-specific billing passthrough fields.
        #
        # @param timezone [String, nil] Body param: Timezone to use for this customer
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerResponse]
        #
        # @see Stigg::Models::V1::CustomerProvisionParams
        def provision(params)
          parsed, options = Stigg::V1::CustomerProvisionParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/customers",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::V1::CustomerResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CustomerRetrieveEntitlementsParams} for more details.
        #
        # Retrieves the effective entitlements for a customer or resource, including
        # feature and credit entitlements.
        #
        # **Warning:** This REST API endpoint lacks built-in client-side caching, fallback
        # mechanisms, and low-latency guarantees. It is not recommended for hot-path
        # entitlement checks. For production use, consider using the Stigg Node Server SDK
        # with caching or the Sidecar for low-latency cached responses.
        #
        # @overload retrieve_entitlements(id, resource_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param resource_id [String] Query param: Resource ID to scope entitlements to a specific resource
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerRetrieveEntitlementsResponse]
        #
        # @see Stigg::Models::V1::CustomerRetrieveEntitlementsParams
        def retrieve_entitlements(id, params = {})
          query_params = [:resource_id]
          parsed, options = Stigg::V1::CustomerRetrieveEntitlementsParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: ["api/v1/customers/%1$s/entitlements", id],
            query: query.transform_keys(resource_id: "resourceId"),
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::Models::V1::CustomerRetrieveEntitlementsResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::CustomerUnarchiveParams} for more details.
        #
        # Restores an archived customer, allowing them to create new subscriptions again.
        #
        # @overload unarchive(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::CustomerResponse]
        #
        # @see Stigg::Models::V1::CustomerUnarchiveParams
        def unarchive(id, params = {})
          parsed, options = Stigg::V1::CustomerUnarchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/customers/%1$s/unarchive", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::CustomerResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
          @payment_method = Stigg::Resources::V1::Customers::PaymentMethod.new(client: client)
          @promotional_entitlements = Stigg::Resources::V1::Customers::PromotionalEntitlements.new(client: client)
          @integrations = Stigg::Resources::V1::Customers::Integrations.new(client: client)
        end
      end
    end
  end
end
