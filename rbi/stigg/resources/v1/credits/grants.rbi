# typed: strong

module Stigg
  module Resources
    class V1
      class Credits
        # Operations related to credit grants
        class Grants
          # Creates a new credit grant for a customer with specified amount, type, and
          # optional billing configuration.
          sig do
            params(
              amount: Float,
              currency_id: String,
              customer_id: String,
              display_name: String,
              grant_type:
                Stigg::V1::Credits::GrantCreateParams::GrantType::OrSymbol,
              await_payment_confirmation: T::Boolean,
              billing_information:
                Stigg::V1::Credits::GrantCreateParams::BillingInformation::OrHash,
              comment: String,
              cost: Stigg::V1::Credits::GrantCreateParams::Cost::OrHash,
              effective_at: Time,
              expire_at: Time,
              metadata: T::Hash[Symbol, String],
              payment_collection_method:
                Stigg::V1::Credits::GrantCreateParams::PaymentCollectionMethod::OrSymbol,
              priority: Integer,
              resource_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Credits::CreditGrantResponse)
          end
          def create(
            # Body param: The credit amount to grant
            amount:,
            # Body param: The credit currency ID (required)
            currency_id:,
            # Body param: The customer ID to grant credits to (required)
            customer_id:,
            # Body param: The display name for the credit grant
            display_name:,
            # Body param: The type of credit grant (PAID, PROMOTIONAL)
            grant_type:,
            # Body param: Whether to wait for payment confirmation before returning (default:
            # true)
            await_payment_confirmation: nil,
            # Body param: Billing information for the credit grant
            billing_information: nil,
            # Body param: An optional comment on the credit grant
            comment: nil,
            # Body param: The monetary cost of the credit grant
            cost: nil,
            # Body param: The date when the credit grant becomes effective
            effective_at: nil,
            # Body param: The date when the credit grant expires
            expire_at: nil,
            # Body param: Additional metadata for the credit grant
            metadata: nil,
            # Body param: The payment collection method (CHARGE, INVOICE, NONE)
            payment_collection_method: nil,
            # Body param: The priority of the credit grant (lower number = higher priority)
            priority: nil,
            # Body param: The resource ID to scope the grant to
            resource_id: nil,
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

          # Retrieves a paginated list of credit grants for a customer.
          sig do
            params(
              customer_id: String,
              after: String,
              before: String,
              created_at:
                Stigg::V1::Credits::GrantListParams::CreatedAt::OrHash,
              currency_id: String,
              limit: Integer,
              resource_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Internal::MyCursorIDPage[
                Stigg::Models::V1::Credits::GrantListResponse
              ]
            )
          end
          def list(
            # Query param: Filter by customer ID (required)
            customer_id:,
            # Query param: Return items that come after this cursor
            after: nil,
            # Query param: Return items that come before this cursor
            before: nil,
            # Query param: Filter by creation date using range operators: gt, gte, lt, lte
            created_at: nil,
            # Query param: Filter by currency ID
            currency_id: nil,
            # Query param: Maximum number of items to return
            limit: nil,
            # Query param: Filter by resource ID. When omitted, only grants without a resource
            # are returned
            resource_id: nil,
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

          # Voids an existing credit grant, preventing further consumption of the remaining
          # credits.
          sig do
            params(
              id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Credits::CreditGrantResponse)
          end
          def void(
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
end
