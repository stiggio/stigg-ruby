# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Subscriptions
        class Invoice
          # Marks the latest invoice of a subscription as paid in the billing provider. The
          # invoice must exist and have an OPEN status.
          #
          # @overload mark_as_paid(id, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse]
          #
          # @see Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidParams
          def mark_as_paid(id, params = {})
            @client.request(
              method: :post,
              path: ["api/v1/subscriptions/%1$s/invoice/paid", id],
              model: Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse,
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
