# typed: strong

module Stigg
  module Resources
    class V1
      class Customers
        class PaymentMethod
          # Attaches a payment method to a customer for billing. Required for paid
          # subscriptions when integrated with a billing provider.
          sig do
            params(
              id: String,
              integration_id: String,
              payment_method_id: String,
              vendor_identifier:
                Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier::OrSymbol,
              billing_currency:
                T.nilable(
                  Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::OrSymbol
                ),
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::CustomerResponse)
          end
          def attach(
            # The unique identifier of the entity
            id,
            # Integration details
            integration_id:,
            # Billing provider payment method id
            payment_method_id:,
            # The vendor identifier of integration
            vendor_identifier:,
            # Customers selected currency
            billing_currency: nil,
            request_options: {}
          )
          end

          # Removes the payment method from a customer. Ensure active paid subscriptions
          # have an alternative payment method.
          sig do
            params(
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::CustomerResponse)
          end
          def detach(
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
