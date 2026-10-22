# typed: strong

module Stigg
  module Resources
    class V1
      class Credits
        class Reservations
          # Releases a credit reservation, consuming the given amount and returning the rest
          # of the held credits to the balance. Retry a failed release with the same
          # reservation ID; it is applied once.
          sig do
            params(
              reservation_id: String,
              consumed_amount: Float,
              currency_id: String,
              customer_id: String,
              resource_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Credits::ReservationReleaseResponse)
          end
          def release(
            # Path param: The client-provided reservation ID
            reservation_id,
            # Body param: The amount of credits to consume at release. Up to the reserved
            # amount is charged to the credits that backed the reservation; the rest returns
            # to the balance, and any amount above the reservation is consumed normally.
            consumed_amount:,
            # Body param: The credit currency of the reservation
            currency_id:,
            # Body param: The customer the reservation was made for
            customer_id:,
            # Body param: The resource the reservation was made for, if any
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

          # @api private
          sig { params(client: Stigg::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
