# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Subscriptions
        # @see Stigg::Resources::V1::Subscriptions::FutureUpdate#cancel_pending_payment
        class CancelSubscription < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Stigg::Models::V1::Subscriptions::CancelSubscription::Data]
          required :data, -> { Stigg::V1::Subscriptions::CancelSubscription::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Subscriptions::CancelSubscription::Data]

          # @see Stigg::Models::V1::Subscriptions::CancelSubscription#data
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

      CancelSubscription = Subscriptions::CancelSubscription
    end
  end
end
