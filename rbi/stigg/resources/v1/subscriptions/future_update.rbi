# typed: strong

module Stigg
  module Resources
    class V1
      class Subscriptions
        class FutureUpdate
          # Cancels a subscription update that is pending payment completion.
          sig do
            params(
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Subscriptions::CancelSubscription)
          end
          def cancel_pending_payment(
            # The unique identifier of the entity
            id,
            request_options: {}
          )
          end

          # Cancels a scheduled subscription update, such as a future downgrade or plan
          # change.
          sig do
            params(
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Subscriptions::CancelSubscription)
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
