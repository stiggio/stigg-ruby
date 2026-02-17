# typed: strong

module Stigg
  module Resources
    class V1
      class Subscriptions
        class Usage
          # Immediately charges usage for a subscription via the billing integration.
          # Calculates usage since the last charge and creates an invoice.
          sig do
            params(
              id: String,
              until_date: Time,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse
            )
          end
          def charge_usage(
            # The unique identifier of the entity
            id,
            # Cutoff date for usage calculation. If not provided, the current time is used.
            until_date: nil,
            request_options: {}
          )
          end

          # Triggers a usage sync for a subscription, reporting current usage to the billing
          # provider.
          sig do
            params(
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Subscriptions::UsageSyncUsageResponse)
          end
          def sync_usage(
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
