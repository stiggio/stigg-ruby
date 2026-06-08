# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Customers
        # Operations related to customers
        class PaymentMethod
          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Customers::PaymentMethodAttachParams} for more details.
          #
          # Attaches a payment method to a customer for billing. Required for paid
          # subscriptions when integrated with a billing provider.
          #
          # @overload attach(id, integration_id:, payment_method_id:, vendor_identifier:, billing_currency: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Path param: The unique identifier of the entity
          #
          # @param integration_id [String] Body param: Integration details
          #
          # @param payment_method_id [String] Body param: Billing provider payment method id
          #
          # @param vendor_identifier [Symbol, Stigg::Models::V1::Customers::PaymentMethodAttachParams::VendorIdentifier] Body param: The vendor identifier of integration
          #
          # @param billing_currency [Symbol, Stigg::Models::V1::Customers::PaymentMethodAttachParams::BillingCurrency, nil] Body param: Customers selected currency
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::CustomerResponse]
          #
          # @see Stigg::Models::V1::Customers::PaymentMethodAttachParams
          def attach(id, params)
            parsed, options = Stigg::V1::Customers::PaymentMethodAttachParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :post,
              path: ["api/v1/customers/%1$s/payment-method", id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Stigg::V1::CustomerResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Customers::PaymentMethodDetachParams} for more details.
          #
          # Removes the payment method from a customer. Ensure active paid subscriptions
          # have an alternative payment method.
          #
          # @overload detach(id, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
          #
          # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::CustomerResponse]
          #
          # @see Stigg::Models::V1::Customers::PaymentMethodDetachParams
          def detach(id, params = {})
            parsed, options = Stigg::V1::Customers::PaymentMethodDetachParams.dump_request(params)
            @client.request(
              method: :delete,
              path: ["api/v1/customers/%1$s/payment-method", id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::V1::CustomerResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Stigg::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
