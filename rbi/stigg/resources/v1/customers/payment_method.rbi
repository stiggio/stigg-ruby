# typed: strong

module Stigg
  module Resources
    class V1
      class Customers
        # Operations related to customers
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
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::CustomerResponse)
          end
          def attach(
            # Path param: The unique identifier of the entity
            id,
            # Body param: Integration details
            integration_id:,
            # Body param: Billing provider payment method id
            payment_method_id:,
            # Body param: The vendor identifier of integration
            vendor_identifier:,
            # Body param: Customers selected currency
            billing_currency: nil,
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

          # Removes the payment method from a customer. Ensure active paid subscriptions
          # have an alternative payment method.
          sig do
            params(
              id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::CustomerResponse)
          end
          def detach(
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
