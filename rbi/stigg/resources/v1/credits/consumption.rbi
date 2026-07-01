# typed: strong

module Stigg
  module Resources
    class V1
      class Credits
        class Consumption
          # Consumes a specified amount of credits directly from a customer wallet, with no
          # feature mapping. Returns the optimistic balance.
          sig do
            params(
              amount: Float,
              currency_id: String,
              customer_id: String,
              idempotency_key: String,
              created_at: Time,
              dimensions:
                T::Hash[
                  Symbol,
                  Stigg::V1::Credits::ConsumptionConsumeParams::Dimension::Variants
                ],
              resource_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Credits::ConsumptionConsumeResponse)
          end
          def consume(
            # Body param: The amount of credits to consume
            amount:,
            # Body param: The credit currency to consume from (required)
            currency_id:,
            # Body param: The customer to consume credits from (required)
            customer_id:,
            # Body param: A unique key used to deduplicate the consumption (required)
            idempotency_key:,
            # Body param: Optional timestamp the consumption is attributed to
            created_at: nil,
            # Body param: Optional dimensions describing the consumption
            dimensions: nil,
            # Body param: Optional resource the consumption is attributed to
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

          # Consumes credits directly from customer wallets asynchronously. Consumptions are
          # reconciled asynchronously into the credit balances.
          sig do
            params(
              consumptions:
                T::Array[
                  Stigg::V1::Credits::ConsumptionConsumeAsyncParams::Consumption::OrHash
                ],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Credits::ConsumptionConsumeAsyncResponse
            )
          end
          def consume_async(
            # Body param: The credit consumptions to report (up to 1000)
            consumptions:,
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

          # @api private
          sig { params(client: Stigg::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
