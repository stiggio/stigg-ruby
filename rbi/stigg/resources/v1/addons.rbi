# typed: strong

module Stigg
  module Resources
    class V1
      # Operations related to addons
      class Addons
        sig { returns(Stigg::Resources::V1::Addons::Entitlements) }
        attr_reader :entitlements

        # Creates a new addon in draft status, associated with a specific product.
        sig do
          params(
            id: String,
            display_name: String,
            product_id: String,
            billing_id: T.nilable(String),
            description: T.nilable(String),
            max_quantity: T.nilable(Integer),
            metadata: T::Hash[Symbol, String],
            pricing_type:
              T.nilable(Stigg::V1::AddonCreateParams::PricingType::OrSymbol),
            status: Stigg::V1::AddonCreateParams::Status::OrSymbol,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Addon)
        end
        def create(
          # The unique identifier for the entity
          id:,
          # The display name of the package
          display_name:,
          # The product id of the package
          product_id:,
          # The unique identifier for the entity in the billing provider
          billing_id: nil,
          # The description of the package
          description: nil,
          # The maximum quantity of this addon that can be added to a subscription
          max_quantity: nil,
          # Metadata associated with the entity
          metadata: nil,
          # The pricing type of the package
          pricing_type: nil,
          # The status of the package
          status: nil,
          request_options: {}
        )
        end

        # Retrieves an addon by its unique identifier, including entitlements and pricing
        # details.
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Addon)
        end
        def retrieve(
          # The unique identifier of the entity
          id,
          request_options: {}
        )
        end

        # Updates an existing addon's properties such as display name, description, and
        # metadata.
        sig do
          params(
            id: String,
            billing_id: T.nilable(String),
            dependencies: T.nilable(T::Array[String]),
            description: T.nilable(String),
            display_name: String,
            max_quantity: T.nilable(Integer),
            metadata: T::Hash[Symbol, String],
            status: Stigg::V1::AddonUpdateParams::Status::OrSymbol,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Addon)
        end
        def update(
          # The unique identifier of the entity
          id,
          # The unique identifier for the entity in the billing provider
          billing_id: nil,
          # List of addons the addon is dependant on
          dependencies: nil,
          # The description of the package
          description: nil,
          # The display name of the package
          display_name: nil,
          # The maximum quantity of this addon that can be added to a subscription
          max_quantity: nil,
          # Metadata associated with the entity
          metadata: nil,
          # The status of the package
          status: nil,
          request_options: {}
        )
        end

        # Retrieves a paginated list of addons in the environment.
        sig do
          params(
            after: String,
            before: String,
            created_at: Stigg::V1::AddonListParams::CreatedAt::OrHash,
            limit: Integer,
            product_id: String,
            status: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::AddonListResponse
            ]
          )
        end
        def list(
          # Return items that come after this cursor
          after: nil,
          # Return items that come before this cursor
          before: nil,
          # Filter by creation date using range operators: gt, gte, lt, lte
          created_at: nil,
          # Maximum number of items to return
          limit: nil,
          # Filter by product ID
          product_id: nil,
          # Filter by status. Supports comma-separated values for multiple statuses
          status: nil,
          request_options: {}
        )
        end

        # Archives an addon, preventing it from being used in new subscriptions.
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Addon)
        end
        def archive(
          # The unique identifier of the entity
          id,
          request_options: {}
        )
        end

        # Creates a draft version of an existing addon for modification before publishing.
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Addon)
        end
        def create_draft(
          # The unique identifier of the entity
          id,
          request_options: {}
        )
        end

        # Publishes a draft addon, making it available for use in subscriptions.
        sig do
          params(
            id: String,
            migration_type:
              Stigg::V1::AddonPublishParams::MigrationType::OrSymbol,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::AddonPublishResponse)
        end
        def publish(
          # The unique identifier of the entity
          id,
          # The migration type of the package
          migration_type:,
          request_options: {}
        )
        end

        # Removes a draft version of an addon.
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::AddonRemoveDraftResponse)
        end
        def remove_draft(
          # The unique identifier of the entity
          id,
          request_options: {}
        )
        end

        # Sets the pricing configuration for an addon.
        sig do
          params(
            id: String,
            pricing_type: Stigg::V1::SetPackagePricing::PricingType::OrSymbol,
            billing_id: String,
            minimum_spend:
              T.nilable(
                T::Array[Stigg::V1::SetPackagePricing::MinimumSpend::OrHash]
              ),
            overage_billing_period:
              Stigg::V1::SetPackagePricing::OverageBillingPeriod::OrSymbol,
            overage_pricing_models:
              T::Array[
                Stigg::V1::SetPackagePricing::OveragePricingModel::OrHash
              ],
            pricing_models:
              T::Array[Stigg::V1::SetPackagePricing::PricingModel::OrHash],
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::SetPackagePricingResponse)
        end
        def set_pricing(
          # The unique identifier of the entity
          id,
          # The pricing type (FREE, PAID, or CUSTOM)
          pricing_type:,
          # Deprecated: billing integration ID
          billing_id: nil,
          # Minimum spend configuration per billing period
          minimum_spend: nil,
          # When overage charges are billed
          overage_billing_period: nil,
          # Array of overage pricing model configurations
          overage_pricing_models: nil,
          # Array of pricing model configurations
          pricing_models: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Stigg::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
