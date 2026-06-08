# typed: strong

module Stigg
  module Resources
    class V1
      class Subscriptions
        # Operations related to subscriptions
        class Invoice
          # Marks the latest invoice of a subscription as paid in the billing provider. The
          # invoice must exist and have an OPEN status.
          sig do
            params(
              id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse
            )
          end
          def mark_as_paid(
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
