# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Customers
        class PaymentMethod
          # Attach payment method
          #
          # @overload attach(id, integration_id:, payment_method_id:, vendor_identifier:, billing_currency: nil, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param integration_id [String] Integration details
          #
          # @param payment_method_id [String] Billing provider payment method id
          #
          # @param vendor_identifier [Symbol, Stigg::Models::V1::Customers::PaymentMethodAttachParams::VendorIdentifier] The vendor identifier of integration
          #
          # @param billing_currency [Symbol, Stigg::Models::V1::Customers::PaymentMethodAttachParams::BillingCurrency, nil] Customers selected currency
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::CustomerResponse]
          #
          # @see Stigg::Models::V1::Customers::PaymentMethodAttachParams
          def attach(id, params)
            parsed, options = Stigg::V1::Customers::PaymentMethodAttachParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v1/customers/%1$s/payment-method", id],
              body: parsed,
              model: Stigg::V1::CustomerResponse,
              options: options
            )
          end

          # Detach payment method
          #
          # @overload detach(id, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::CustomerResponse]
          #
          # @see Stigg::Models::V1::Customers::PaymentMethodDetachParams
          def detach(id, params = {})
            @client.request(
              method: :delete,
              path: ["api/v1/customers/%1$s/payment-method", id],
              model: Stigg::V1::CustomerResponse,
              options: params[:request_options]
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
