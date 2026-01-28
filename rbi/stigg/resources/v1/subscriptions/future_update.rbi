# typed: strong

module Stigg
  module Resources
    class V1
      class Subscriptions
        class FutureUpdate
          # Cancel pending payment update
          sig do
            params(
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentResponse
            )
          end
          def cancel_pending_payment(
            # The unique identifier of the entity
            id,
            request_options: {}
          )
          end

          # Cancel scheduled update
          sig do
            params(
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleResponse
            )
          end
          def cancel_schedule(
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
