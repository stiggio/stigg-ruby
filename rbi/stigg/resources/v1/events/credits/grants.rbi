# typed: strong

module Stigg
  module Resources
    class V1
      class Events
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
                  Stigg::V1::Events::Credits::GrantCreateParams::GrantType::OrSymbol,
                await_payment_confirmation: T::Boolean,
                billing_information:
                  Stigg::V1::Events::Credits::GrantCreateParams::BillingInformation::OrHash,
                comment: String,
                cost:
                  Stigg::V1::Events::Credits::GrantCreateParams::Cost::OrHash,
                effective_at: Time,
                expire_at: Time,
                metadata: T::Hash[Symbol, String],
                payment_collection_method:
                  Stigg::V1::Events::Credits::GrantCreateParams::PaymentCollectionMethod::OrSymbol,
                priority: Integer,
                resource_id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(Stigg::V1::Events::Credits::CreditGrantResponse)
            end
            def create(
              # The credit amount to grant
              amount:,
              # The credit currency ID (required)
              currency_id:,
              # The customer ID to grant credits to (required)
              customer_id:,
              # The display name for the credit grant
              display_name:,
              # The type of credit grant (PAID, PROMOTIONAL)
              grant_type:,
              # Whether to wait for payment confirmation before returning (default: true)
              await_payment_confirmation: nil,
              # Billing information for the credit grant
              billing_information: nil,
              # An optional comment on the credit grant
              comment: nil,
              # The monetary cost of the credit grant
              cost: nil,
              # The date when the credit grant becomes effective
              effective_at: nil,
              # The date when the credit grant expires
              expire_at: nil,
              # Additional metadata for the credit grant
              metadata: nil,
              # The payment collection method (CHARGE, INVOICE, NONE)
              payment_collection_method: nil,
              # The priority of the credit grant (lower number = higher priority)
              priority: nil,
              # The resource ID to scope the grant to
              resource_id: nil,
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
                  Stigg::V1::Events::Credits::GrantListParams::CreatedAt::OrHash,
                currency_id: String,
                limit: Integer,
                resource_id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(
                Stigg::Internal::MyCursorIDPage[
                  Stigg::Models::V1::Events::Credits::GrantListResponse
                ]
              )
            end
            def list(
              # Filter by customer ID (required)
              customer_id:,
              # Return items that come after this cursor
              after: nil,
              # Return items that come before this cursor
              before: nil,
              # Filter by creation date using range operators: gt, gte, lt, lte
              created_at: nil,
              # Filter by currency ID
              currency_id: nil,
              # Maximum number of items to return
              limit: nil,
              # Filter by resource ID. When omitted, only grants without a resource are returned
              resource_id: nil,
              request_options: {}
            )
            end

            # Voids an existing credit grant, preventing further consumption of the remaining
            # credits.
            sig do
              params(
                id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(Stigg::V1::Events::Credits::CreditGrantResponse)
            end
            def void(
              # The unique identifier of the entity
              id,
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
end
