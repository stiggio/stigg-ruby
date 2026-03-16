# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      # Operations related to addons
      class Addons
        # @return [Stigg::Resources::V1::Addons::Entitlements]
        attr_reader :entitlements

        # Creates a new addon in draft status, associated with a specific product.
        #
        # @overload create(id:, display_name:, product_id:, billing_id: nil, description: nil, max_quantity: nil, metadata: nil, pricing_type: nil, status: nil, request_options: {})
        #
        # @param id [String] The unique identifier for the entity
        #
        # @param display_name [String] The display name of the package
        #
        # @param product_id [String] The product id of the package
        #
        # @param billing_id [String, nil] The unique identifier for the entity in the billing provider
        #
        # @param description [String, nil] The description of the package
        #
        # @param max_quantity [Integer, nil] The maximum quantity of this addon that can be added to a subscription
        #
        # @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
        #
        # @param pricing_type [Symbol, Stigg::Models::V1::AddonCreateParams::PricingType, nil] The pricing type of the package
        #
        # @param status [Symbol, Stigg::Models::V1::AddonCreateParams::Status] The status of the package
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Addon]
        #
        # @see Stigg::Models::V1::AddonCreateParams
        def create(params)
          parsed, options = Stigg::V1::AddonCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/addons",
            body: parsed,
            model: Stigg::V1::Addon,
            options: options
          )
        end

        # Retrieves an addon by its unique identifier, including entitlements and pricing
        # details.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Addon]
        #
        # @see Stigg::Models::V1::AddonRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["api/v1/addons/%1$s", id],
            model: Stigg::V1::Addon,
            options: params[:request_options]
          )
        end

        # Updates an existing addon's properties such as display name, description, and
        # metadata.
        #
        # @overload update(id, billing_id: nil, charges: nil, dependencies: nil, description: nil, display_name: nil, max_quantity: nil, metadata: nil, status: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param billing_id [String, nil] The unique identifier for the entity in the billing provider
        #
        # @param charges [Stigg::Models::V1::AddonUpdateParams::Charges] Pricing configuration to set on the addon draft
        #
        # @param dependencies [Array<String>, nil] List of addons the addon is dependant on
        #
        # @param description [String, nil] The description of the package
        #
        # @param display_name [String] The display name of the package
        #
        # @param max_quantity [Integer, nil] The maximum quantity of this addon that can be added to a subscription
        #
        # @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
        #
        # @param status [Symbol, Stigg::Models::V1::AddonUpdateParams::Status] The status of the package
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Addon]
        #
        # @see Stigg::Models::V1::AddonUpdateParams
        def update(id, params = {})
          parsed, options = Stigg::V1::AddonUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["api/v1/addons/%1$s", id],
            body: parsed,
            model: Stigg::V1::Addon,
            options: options
          )
        end

        # Retrieves a paginated list of addons in the environment.
        #
        # @overload list(after: nil, before: nil, created_at: nil, limit: nil, product_id: nil, status: nil, request_options: {})
        #
        # @param after [String] Return items that come after this cursor
        #
        # @param before [String] Return items that come before this cursor
        #
        # @param created_at [Stigg::Models::V1::AddonListParams::CreatedAt] Filter by creation date using range operators: gt, gte, lt, lte
        #
        # @param limit [Integer] Maximum number of items to return
        #
        # @param product_id [String] Filter by product ID
        #
        # @param status [String] Filter by status. Supports comma-separated values for multiple statuses
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::AddonListResponse>]
        #
        # @see Stigg::Models::V1::AddonListParams
        def list(params = {})
          parsed, options = Stigg::V1::AddonListParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "api/v1/addons",
            query: query.transform_keys(created_at: "createdAt", product_id: "productId"),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::AddonListResponse,
            options: options
          )
        end

        # Archives an addon, preventing it from being used in new subscriptions.
        #
        # @overload archive(id, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Addon]
        #
        # @see Stigg::Models::V1::AddonArchiveParams
        def archive(id, params = {})
          @client.request(
            method: :post,
            path: ["api/v1/addons/%1$s/archive", id],
            model: Stigg::V1::Addon,
            options: params[:request_options]
          )
        end

        # Creates a draft version of an existing addon for modification before publishing.
        #
        # @overload create_draft(id, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Addon]
        #
        # @see Stigg::Models::V1::AddonCreateDraftParams
        def create_draft(id, params = {})
          @client.request(
            method: :post,
            path: ["api/v1/addons/%1$s/draft", id],
            model: Stigg::V1::Addon,
            options: params[:request_options]
          )
        end

        # Publishes a draft addon, making it available for use in subscriptions.
        #
        # @overload publish(id, migration_type:, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param migration_type [Symbol, Stigg::Models::V1::AddonPublishParams::MigrationType] The migration type of the package
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::AddonPublishResponse]
        #
        # @see Stigg::Models::V1::AddonPublishParams
        def publish(id, params)
          parsed, options = Stigg::V1::AddonPublishParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/addons/%1$s/publish", id],
            body: parsed,
            model: Stigg::Models::V1::AddonPublishResponse,
            options: options
          )
        end

        # Removes a draft version of an addon.
        #
        # @overload remove_draft(id, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::AddonRemoveDraftResponse]
        #
        # @see Stigg::Models::V1::AddonRemoveDraftParams
        def remove_draft(id, params = {})
          @client.request(
            method: :delete,
            path: ["api/v1/addons/%1$s/draft", id],
            model: Stigg::Models::V1::AddonRemoveDraftResponse,
            options: params[:request_options]
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
