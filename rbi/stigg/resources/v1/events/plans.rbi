# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class Plans
          # Creates a new plan in draft status.
          sig do
            params(
              id: String,
              display_name: String,
              product_id: String,
              billing_id: T.nilable(String),
              description: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              parent_plan_id: T.nilable(String),
              pricing_type:
                T.nilable(
                  Stigg::V1::Events::PlanCreateParams::PricingType::OrSymbol
                ),
              status: Stigg::V1::Events::PlanCreateParams::Status::OrSymbol,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Events::PlanCreateResponse)
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
            ).returns(Stigg::Models::V1::Events::PlanRetrieveResponse)
          end
          def retrieve(
            # The unique identifier of the entity
            id,
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

          # @api private
          sig { params(client: Stigg::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
