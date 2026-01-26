# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Subscriptions
        # @see Stigg::Resources::V1::Subscriptions::FutureUpdate#cancel_pending_payment
        class FutureUpdateCancelPendingPaymentResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentResponse::Data]
          required :data, -> { Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentResponse::Data }

          # @!method initialize(data:)
          #   @param data [Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentResponse::Data]

          # @see Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   Subscription ID
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   @param id [String] Subscription ID
          end
        end
      end
    end
  end
end
