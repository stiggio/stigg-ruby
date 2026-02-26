# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class Plans
          sig { returns(Stigg::Resources::V1::Events::Plans::Draft) }
          attr_reader :draft

          sig { returns(Stigg::Resources::V1::Events::Plans::Entitlements) }
          attr_reader :entitlements

          # Creates a new plan in draft status.
          sig do
            params(
              id: String,
              display_name: String,
              product_id: String,
              billing_id: T.nilable(String),
              default_trial_config:
                T.nilable(
                  Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::OrHash
                ),
              description: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              parent_plan_id: T.nilable(String),
              pricing_type:
                T.nilable(
                  Stigg::V1::Events::PlanCreateParams::PricingType::OrSymbol
                ),
              status: Stigg::V1::Events::PlanCreateParams::Status::OrSymbol,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Events::Plan)
          end
          def create(
            # The unique identifier for the entity
            id:,
            # The display name of the package
            display_name:,
            # The product ID to associate the plan with
            product_id:,
            # The unique identifier for the entity in the billing provider
            billing_id: nil,
            # Default trial configuration for the plan
            default_trial_config: nil,
            # The description of the package
            description: nil,
            # Metadata associated with the entity
            metadata: nil,
            # The ID of the parent plan, if applicable
            parent_plan_id: nil,
            # The pricing type of the package
            pricing_type: nil,
            # The status of the package
            status: nil,
            request_options: {}
          )
          end

          # Retrieves a plan by its unique identifier, including entitlements and pricing
          # details.
          sig do
            params(
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Events::Plan)
          end
          def retrieve(
            # The unique identifier of the entity
            id,
            request_options: {}
          )
          end

          # Updates an existing plan's properties such as display name, description, and
          # metadata.
          sig do
            params(
              id: String,
              billing_id: T.nilable(String),
              compatible_addon_ids: T.nilable(T::Array[String]),
              default_trial_config:
                T.nilable(
                  Stigg::V1::Events::PlanUpdateParams::DefaultTrialConfig::OrHash
                ),
              description: T.nilable(String),
              display_name: String,
              metadata: T::Hash[Symbol, String],
              parent_plan_id: T.nilable(String),
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Events::Plan)
          end
          def update(
            # The unique identifier of the entity
            id,
            # The unique identifier for the entity in the billing provider
            billing_id: nil,
            compatible_addon_ids: nil,
            # Default trial configuration for the plan
            default_trial_config: nil,
            # The description of the package
            description: nil,
            # The display name of the package
            display_name: nil,
            # Metadata associated with the entity
            metadata: nil,
            # The ID of the parent plan, if applicable
            parent_plan_id: nil,
            request_options: {}
          )
          end

          # Retrieves a paginated list of plans in the environment.
          sig do
            params(
              after: String,
              before: String,
              created_at: Stigg::V1::Events::PlanListParams::CreatedAt::OrHash,
              limit: Integer,
              product_id: String,
              status: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Internal::MyCursorIDPage[
                Stigg::Models::V1::Events::PlanListResponse
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

          # Archives a plan, preventing it from being used in new subscriptions.
          sig do
            params(
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Events::Plan)
          end
          def archive(
            # The unique identifier of the entity
            id,
            request_options: {}
          )
          end

          # Publishes a draft plan, making it available for use in subscriptions.
          sig do
            params(
              id: String,
              migration_type:
                Stigg::V1::Events::PlanPublishParams::MigrationType::OrSymbol,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Events::PlanPublishResponse)
          end
          def publish(
            # The unique identifier of the entity
            id,
            # The migration type of the package
            migration_type:,
            request_options: {}
          )
          end

          # Sets the pricing configuration for a plan, including pricing models, overage
          # pricing, and minimum spend.
          sig do
            params(
              id: String,
              pricing_type:
                Stigg::V1::Events::SetPackagePricing::PricingType::OrSymbol,
              billing_id: String,
              minimum_spend:
                T.nilable(
                  T::Array[
                    Stigg::V1::Events::SetPackagePricing::MinimumSpend::OrHash
                  ]
                ),
              overage_billing_period:
                Stigg::V1::Events::SetPackagePricing::OverageBillingPeriod::OrSymbol,
              overage_pricing_models:
                T::Array[
                  Stigg::V1::Events::SetPackagePricing::OveragePricingModel::OrHash
                ],
              pricing_models:
                T::Array[
                  Stigg::V1::Events::SetPackagePricing::PricingModel::OrHash
                ],
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Events::SetPackagePricingResponse)
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
end
