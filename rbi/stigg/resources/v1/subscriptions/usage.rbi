# typed: strong

module Stigg
  module Resources
    class V1
      class Subscriptions
        # Operations related to subscriptions
        class Usage
          # Immediately charges usage for a subscription via the billing integration.
          # Calculates usage since the last charge and creates an invoice.
          sig do
            params(
              id: String,
              until_date: Time,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse
            )
          end
          def charge_usage(
            # Path param: The unique identifier of the entity
            id,
            # Body param: Cutoff date for usage calculation. If not provided, the current time
            # is used.
            until_date: nil,
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

          # Triggers a usage sync for a subscription, reporting current usage to the billing
          # provider.
          sig do
            params(
              id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Subscriptions::UsageSyncResponse)
          end
          def sync(
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
