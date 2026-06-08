# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Subscriptions
        # Operations related to subscriptions
        class Invoice
          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidParams} for more details.
          #
          # Marks the latest invoice of a subscription as paid in the billing provider. The
          # invoice must exist and have an OPEN status.
          #
          # @overload mark_as_paid(id, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
          #
          # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse]
          #
          # @see Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidParams
          def mark_as_paid(id, params = {})
            parsed, options = Stigg::V1::Subscriptions::InvoiceMarkAsPaidParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v1/subscriptions/%1$s/invoice/paid", id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse,
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
