# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class Addons
          # @return [Stigg::Resources::V1::Events::Addons::Draft]
          attr_reader :draft

          # Archives an addon, preventing it from being used in new subscriptions.
          #
          # @overload archive_addon(id, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::AddonArchiveAddonResponse]
          #
          # @see Stigg::Models::V1::Events::AddonArchiveAddonParams
          def archive_addon(id, params = {})
            @client.request(
              method: :post,
              path: ["api/v1/addons/%1$s/archive", id],
              model: Stigg::Models::V1::Events::AddonArchiveAddonResponse,
              options: params[:request_options]
            )
          end

          # Creates a new addon in draft status, associated with a specific product.
          #
          # @overload create_addon(id:, display_name:, product_id:, billing_id: nil, description: nil, max_quantity: nil, metadata: nil, pricing_type: nil, status: nil, request_options: {})
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
          # @param pricing_type [Symbol, Stigg::Models::V1::Events::AddonCreateAddonParams::PricingType, nil] The pricing type of the package
          #
          # @param status [Symbol, Stigg::Models::V1::Events::AddonCreateAddonParams::Status] The status of the package
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::AddonCreateAddonResponse]
          #
          # @see Stigg::Models::V1::Events::AddonCreateAddonParams
          def create_addon(params)
            parsed, options = Stigg::V1::Events::AddonCreateAddonParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/addons",
              body: parsed,
              model: Stigg::Models::V1::Events::AddonCreateAddonResponse,
              options: options
            )
          end

          # Retrieves a paginated list of addons in the environment.
          #
          # @overload list_addons(after: nil, before: nil, created_at: nil, limit: nil, product_id: nil, status: nil, request_options: {})
          #
          # @param after [String] Return items that come after this cursor
          #
          # @param before [String] Return items that come before this cursor
          #
          # @param created_at [Stigg::Models::V1::Events::AddonListAddonsParams::CreatedAt] Filter by creation date using range operators: gt, gte, lt, lte
          #
          # @param limit [Integer] Maximum number of items to return
          #
          # @param product_id [String] Filter by product ID
          #
          # @param status [String] Filter by status. Supports comma-separated values for multiple statuses
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Events::AddonListAddonsResponse>]
          #
          # @see Stigg::Models::V1::Events::AddonListAddonsParams
          def list_addons(params = {})
            parsed, options = Stigg::V1::Events::AddonListAddonsParams.dump_request(params)
            @client.request(
              method: :get,
              path: "api/v1/addons",
              query: parsed.transform_keys(created_at: "createdAt", product_id: "productId"),
              page: Stigg::Internal::MyCursorIDPage,
              model: Stigg::Models::V1::Events::AddonListAddonsResponse,
              options: options
            )
          end

          # Publishes a draft addon, making it available for use in subscriptions.
          #
          # @overload publish_addon(id, migration_type:, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param migration_type [Symbol, Stigg::Models::V1::Events::AddonPublishAddonParams::MigrationType] The migration type of the package
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::AddonPublishAddonResponse]
          #
          # @see Stigg::Models::V1::Events::AddonPublishAddonParams
          def publish_addon(id, params)
            parsed, options = Stigg::V1::Events::AddonPublishAddonParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v1/addons/%1$s/publish", id],
              body: parsed,
              model: Stigg::Models::V1::Events::AddonPublishAddonResponse,
              options: options
            )
          end

          # Retrieves an addon by its unique identifier, including entitlements and pricing
          # details.
          #
          # @overload retrieve_addon(id, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::AddonRetrieveAddonResponse]
          #
          # @see Stigg::Models::V1::Events::AddonRetrieveAddonParams
          def retrieve_addon(id, params = {})
            @client.request(
              method: :get,
              path: ["api/v1/addons/%1$s", id],
              model: Stigg::Models::V1::Events::AddonRetrieveAddonResponse,
              options: params[:request_options]
            )
          end

          # Updates an existing addon's properties such as display name, description, and
          # metadata.
          #
          # @overload update_addon(id, billing_id: nil, dependencies: nil, description: nil, display_name: nil, max_quantity: nil, metadata: nil, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param billing_id [String, nil] The unique identifier for the entity in the billing provider
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
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::AddonUpdateAddonResponse]
          #
          # @see Stigg::Models::V1::Events::AddonUpdateAddonParams
          def update_addon(id, params = {})
            parsed, options = Stigg::V1::Events::AddonUpdateAddonParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["api/v1/addons/%1$s", id],
              body: parsed,
              model: Stigg::Models::V1::Events::AddonUpdateAddonResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Stigg::Client]
          def initialize(client:)
            @client = client
            @draft = Stigg::Resources::V1::Events::Addons::Draft.new(client: client)
          end
        end
      end
    end
  end
end
