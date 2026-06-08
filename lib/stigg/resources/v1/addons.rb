# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      # Operations related to addons
      class Addons
        # @return [Stigg::Resources::V1::Addons::Entitlements]
        attr_reader :entitlements

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::AddonCreateParams} for more details.
        #
        # Creates a new addon in draft status, associated with a specific product.
        #
        # @overload create(id:, display_name:, product_id:, billing_id: nil, description: nil, max_quantity: nil, metadata: nil, pricing_type: nil, status: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Body param: The unique identifier for the entity
        #
        # @param display_name [String] Body param: The display name of the package
        #
        # @param product_id [String] Body param: The product id of the package
        #
        # @param billing_id [String, nil] Body param: The unique identifier for the entity in the billing provider
        #
        # @param description [String, nil] Body param: The description of the package
        #
        # @param max_quantity [Integer, nil] Body param: The maximum quantity of this addon that can be added to a subscripti
        #
        # @param metadata [Hash{Symbol=>String}] Body param: Metadata associated with the entity
        #
        # @param pricing_type [Symbol, Stigg::Models::V1::AddonCreateParams::PricingType, nil] Body param: The pricing type of the package
        #
        # @param status [Symbol, Stigg::Models::V1::AddonCreateParams::Status] Body param: The status of the package
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Addon]
        #
        # @see Stigg::Models::V1::AddonCreateParams
        def create(params)
          parsed, options = Stigg::V1::AddonCreateParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/addons",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::V1::Addon,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::AddonRetrieveParams} for more details.
        #
        # Retrieves an addon by its unique identifier, including entitlements and pricing
        # details.
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
        # @return [Stigg::Models::V1::Addon]
        #
        # @see Stigg::Models::V1::AddonRetrieveParams
        def retrieve(id, params = {})
          parsed, options = Stigg::V1::AddonRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/v1/addons/%1$s", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::Addon,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::AddonUpdateParams} for more details.
        #
        # Updates an existing addon's properties such as display name, description, and
        # metadata.
        #
        # @overload update(id, billing_id: nil, charges: nil, dependencies: nil, description: nil, display_name: nil, max_quantity: nil, metadata: nil, status: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param billing_id [String, nil] Body param: The unique identifier for the entity in the billing provider
        #
        # @param charges [Stigg::Models::V1::AddonUpdateParams::Charges] Body param: Pricing configuration to set on the addon draft
        #
        # @param dependencies [Array<String>, nil] Body param: List of addons the addon is dependant on
        #
        # @param description [String, nil] Body param: The description of the package
        #
        # @param display_name [String] Body param: The display name of the package
        #
        # @param max_quantity [Integer, nil] Body param: The maximum quantity of this addon that can be added to a subscripti
        #
        # @param metadata [Hash{Symbol=>String}] Body param: Metadata associated with the entity
        #
        # @param status [Symbol, Stigg::Models::V1::AddonUpdateParams::Status] Body param: The status of the package
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Addon]
        #
        # @see Stigg::Models::V1::AddonUpdateParams
        def update(id, params = {})
          parsed, options = Stigg::V1::AddonUpdateParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :patch,
            path: ["api/v1/addons/%1$s", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::V1::Addon,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::AddonListParams} for more details.
        #
        # Retrieves a paginated list of addons in the environment.
        #
        # @overload list(after: nil, before: nil, created_at: nil, limit: nil, product_id: nil, status: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param after [String] Query param: Return items that come after this cursor
        #
        # @param before [String] Query param: Return items that come before this cursor
        #
        # @param created_at [Stigg::Models::V1::AddonListParams::CreatedAt] Query param: Filter by creation date using range operators: gt, gte, lt, lte
        #
        # @param limit [Integer] Query param: Maximum number of items to return
        #
        # @param product_id [String] Query param: Filter by product ID
        #
        # @param status [Array<Symbol, Stigg::Models::V1::AddonListParams::Status>] Query param: Filter by status. Supports comma-separated values for multiple stat
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::AddonListResponse>]
        #
        # @see Stigg::Models::V1::AddonListParams
        def list(params = {})
          query_params = [:after, :before, :created_at, :limit, :product_id, :status]
          parsed, options = Stigg::V1::AddonListParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: "api/v1/addons",
            query: query.transform_keys(created_at: "createdAt", product_id: "productId"),
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::AddonListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::AddonArchiveParams} for more details.
        #
        # Archives an addon, preventing it from being used in new subscriptions.
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
        # @return [Stigg::Models::V1::Addon]
        #
        # @see Stigg::Models::V1::AddonArchiveParams
        def archive(id, params = {})
          parsed, options = Stigg::V1::AddonArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/addons/%1$s/archive", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::Addon,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::AddonCreateDraftParams} for more details.
        #
        # Creates a draft version of an existing addon for modification before publishing.
        #
        # @overload create_draft(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Addon]
        #
        # @see Stigg::Models::V1::AddonCreateDraftParams
        def create_draft(id, params = {})
          parsed, options = Stigg::V1::AddonCreateDraftParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/addons/%1$s/draft", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::Addon,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::AddonListChargesParams} for more details.
        #
        # Retrieves the list of charges configured on an addon.
        #
        # @overload list_charges(id, after: nil, before: nil, limit: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
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
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::AddonListChargesResponse>]
        #
        # @see Stigg::Models::V1::AddonListChargesParams
        def list_charges(id, params = {})
          query_params = [:after, :before, :limit]
          parsed, options = Stigg::V1::AddonListChargesParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: ["api/v1/addons/%1$s/charges", id],
            query: query,
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::AddonListChargesResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::AddonPublishParams} for more details.
        #
        # Publishes a draft addon, making it available for use in subscriptions.
        #
        # @overload publish(id, migration_type:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param migration_type [Symbol, Stigg::Models::V1::AddonPublishParams::MigrationType] Body param: The migration type of the package
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::AddonPublishResponse]
        #
        # @see Stigg::Models::V1::AddonPublishParams
        def publish(id, params)
          parsed, options = Stigg::V1::AddonPublishParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: ["api/v1/addons/%1$s/publish", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::Models::V1::AddonPublishResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::AddonRemoveDraftParams} for more details.
        #
        # Removes a draft version of an addon.
        #
        # @overload remove_draft(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::AddonRemoveDraftResponse]
        #
        # @see Stigg::Models::V1::AddonRemoveDraftParams
        def remove_draft(id, params = {})
          parsed, options = Stigg::V1::AddonRemoveDraftParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["api/v1/addons/%1$s/draft", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::Models::V1::AddonRemoveDraftResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
          @entitlements = Stigg::Resources::V1::Addons::Entitlements.new(client: client)
        end
      end
    end
  end
end
