# typed: strong

module Stigg
  module Resources
    class V1
      class Subscriptions
        class Invoice
          # Marks the latest invoice of a subscription as paid in the billing provider. The
          # invoice must exist and have an OPEN status.
          sig do
            params(
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse
            )
          end
          def mark_as_paid(
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
