# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Subscriptions
        class FutureUpdate
          # Cancel pending payment update
          #
          # @overload cancel_pending_payment(id, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Subscriptions::CancelSubscription]
          #
          # @see Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentParams
          def cancel_pending_payment(id, params = {})
            @client.request(
              method: :delete,
              path: ["api/v1/subscriptions/%1$s/future-update/pending-payment", id],
              model: Stigg::V1::Subscriptions::CancelSubscription,
              options: params[:request_options]
            )
          end

          # Cancel scheduled update
          #
          # @overload cancel_schedule(id, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Subscriptions::CancelSubscription]
          #
          # @see Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleParams
          def cancel_schedule(id, params = {})
            @client.request(
              method: :delete,
              path: ["api/v1/subscriptions/%1$s/future-update/schedule", id],
              model: Stigg::V1::Subscriptions::CancelSubscription,
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
