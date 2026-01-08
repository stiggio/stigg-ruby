# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Subscriptions
        class FutureUpdate
          # Perform cancel future update on a Subscription
          #
          # @overload cancel_pending_payment(id, request_options: {})
          #
          # @param id [String]
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentResponse]
          #
          # @see Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentParams
          def cancel_pending_payment(id, params = {})
            @client.request(
              method: :delete,
              path: ["api/v1/subscriptions/%1$s/future-update/pending-payment", id],
              model: Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentResponse,
              options: params[:request_options]
            )
          end

          # Perform cancel future update on a Subscription
          #
          # @overload cancel_schedule(id, request_options: {})
          #
          # @param id [String]
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleResponse]
          #
          # @see Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleParams
          def cancel_schedule(id, params = {})
            @client.request(
              method: :delete,
              path: ["api/v1/subscriptions/%1$s/future-update/schedule", id],
              model: Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleResponse,
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
