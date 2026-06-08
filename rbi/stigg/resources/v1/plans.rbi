# typed: strong

module Stigg
  module Resources
    class V1
      # Operations related to plans
      class Plans
        sig { returns(Stigg::Resources::V1::Plans::Entitlements) }
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
                Stigg::V1::PlanCreateParams::DefaultTrialConfig::OrHash
              ),
            description: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            parent_plan_id: T.nilable(String),
            pricing_type:
              T.nilable(Stigg::V1::PlanCreateParams::PricingType::OrSymbol),
            status: Stigg::V1::PlanCreateParams::Status::OrSymbol,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Plan)
        end
        def create(
          # Body param: The unique identifier for the entity
          id:,
          # Body param: The display name of the package
          display_name:,
          # Body param: The product ID to associate the plan with
          product_id:,
          # Body param: The unique identifier for the entity in the billing provider
          billing_id: nil,
          # Body param: Default trial configuration for the plan
          default_trial_config: nil,
          # Body param: The description of the package
          description: nil,
          # Body param: Metadata associated with the entity
          metadata: nil,
          # Body param: The ID of the parent plan, if applicable
          parent_plan_id: nil,
          # Body param: The pricing type of the package
          pricing_type: nil,
          # Body param: The status of the package
          status: nil,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Retrieves a plan by its unique identifier, including entitlements and pricing
        # details.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Plan)
        end
        def retrieve(
          # The unique identifier of the entity
          id,
          # Account ID — optional when authenticating with a user JWT (Bearer token); falls
          # back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Environment ID — required when authenticating with a user JWT (Bearer token) on
          # environment-scoped endpoints. Ignored for API-key auth (env is intrinsic to the
          # key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Updates an existing plan's properties such as display name, description, and
        # metadata.
        sig do
          params(
            id: String,
            billing_id: T.nilable(String),
            charges: Stigg::V1::PlanUpdateParams::Charges::OrHash,
            compatible_addon_ids: T.nilable(T::Array[String]),
            default_trial_config:
              T.nilable(
                Stigg::V1::PlanUpdateParams::DefaultTrialConfig::OrHash
              ),
            description: T.nilable(String),
            display_name: String,
            metadata: T::Hash[Symbol, String],
            parent_plan_id: T.nilable(String),
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Plan)
        end
        def update(
          # Path param: The unique identifier of the entity
          id,
          # Body param: The unique identifier for the entity in the billing provider
          billing_id: nil,
          # Body param: Pricing configuration to set on the plan draft
          charges: nil,
          # Body param
          compatible_addon_ids: nil,
          # Body param: Default trial configuration for the plan
          default_trial_config: nil,
          # Body param: The description of the package
          description: nil,
          # Body param: The display name of the package
          display_name: nil,
          # Body param: Metadata associated with the entity
          metadata: nil,
          # Body param: The ID of the parent plan, if applicable
          parent_plan_id: nil,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Retrieves a paginated list of plans in the environment.
        sig do
          params(
            after: String,
            before: String,
            created_at: Stigg::V1::PlanListParams::CreatedAt::OrHash,
            limit: Integer,
            product_id: String,
            status: T::Array[Stigg::V1::PlanListParams::Status::OrSymbol],
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[Stigg::Models::V1::PlanListResponse]
          )
        end
        def list(
          # Query param: Return items that come after this cursor
          after: nil,
          # Query param: Return items that come before this cursor
          before: nil,
          # Query param: Filter by creation date using range operators: gt, gte, lt, lte
          created_at: nil,
          # Query param: Maximum number of items to return
          limit: nil,
          # Query param: Filter by product ID
          product_id: nil,
          # Query param: Filter by status. Supports comma-separated values for multiple
          # statuses
          status: nil,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Archives a plan, preventing it from being used in new subscriptions.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Plan)
        end
        def archive(
          # The unique identifier of the entity
          id,
          # Account ID — optional when authenticating with a user JWT (Bearer token); falls
          # back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Environment ID — required when authenticating with a user JWT (Bearer token) on
          # environment-scoped endpoints. Ignored for API-key auth (env is intrinsic to the
          # key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Creates a draft version of an existing plan for modification before publishing.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Plan)
        end
        def create_draft(
          # The unique identifier of the entity
          id,
          # Account ID — optional when authenticating with a user JWT (Bearer token); falls
          # back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Environment ID — required when authenticating with a user JWT (Bearer token) on
          # environment-scoped endpoints. Ignored for API-key auth (env is intrinsic to the
          # key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Retrieves the list of charges configured on a plan.
        sig do
          params(
            id: String,
            after: String,
            before: String,
            limit: Integer,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::PlanListChargesResponse
            ]
          )
        end
        def list_charges(
          # Path param: The unique identifier of the entity
          id,
          # Query param: Return items that come after this cursor
          after: nil,
          # Query param: Return items that come before this cursor
          before: nil,
          # Query param: Maximum number of items to return
          limit: nil,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Retrieves the list of overage charges configured on a plan.
        sig do
          params(
            id: String,
            after: String,
            before: String,
            limit: Integer,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::PlanListOverageChargesResponse
            ]
          )
        end
        def list_overage_charges(
          # Path param: The unique identifier of the entity
          id,
          # Query param: Return items that come after this cursor
          after: nil,
          # Query param: Return items that come before this cursor
          before: nil,
          # Query param: Maximum number of items to return
          limit: nil,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Publishes a draft plan, making it available for use in subscriptions.
        sig do
          params(
            id: String,
            migration_type:
              Stigg::V1::PlanPublishParams::MigrationType::OrSymbol,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::PlanPublishResponse)
        end
        def publish(
          # Path param: The unique identifier of the entity
          id,
          # Body param: The migration type of the package
          migration_type:,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Removes a draft version of a plan.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::PlanRemoveDraftResponse)
        end
        def remove_draft(
          # The unique identifier of the entity
          id,
          # Account ID — optional when authenticating with a user JWT (Bearer token); falls
          # back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Environment ID — required when authenticating with a user JWT (Bearer token) on
          # environment-scoped endpoints. Ignored for API-key auth (env is intrinsic to the
          # key).
          x_environment_id: nil,
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
