# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Subscriptions
        # Operations related to subscriptions
        class FutureUpdate
          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentParams} for
          # more details.
          #
          # Cancels a subscription update that is pending payment completion.
          #
          # @overload cancel_pending_payment(id, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
          #
          # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Subscriptions::CancelSubscription]
          #
          # @see Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentParams
          def cancel_pending_payment(id, params = {})
            parsed, options = Stigg::V1::Subscriptions::FutureUpdateCancelPendingPaymentParams.dump_request(params)
            @client.request(
              method: :delete,
              path: ["api/v1/subscriptions/%1$s/future-update/pending-payment", id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::V1::Subscriptions::CancelSubscription,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleParams} for more
          # details.
          #
          # Cancels a scheduled subscription update, such as a future downgrade or plan
          # change.
          #
          # @overload cancel_schedule(id, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
          #
          # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Subscriptions::CancelSubscription]
          #
          # @see Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleParams
          def cancel_schedule(id, params = {})
            parsed, options = Stigg::V1::Subscriptions::FutureUpdateCancelScheduleParams.dump_request(params)
            @client.request(
              method: :delete,
              path: ["api/v1/subscriptions/%1$s/future-update/schedule", id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::V1::Subscriptions::CancelSubscription,
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
