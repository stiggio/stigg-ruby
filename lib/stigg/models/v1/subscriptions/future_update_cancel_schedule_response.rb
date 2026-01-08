# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Subscriptions
        # @see Stigg::Resources::V1::Subscriptions::FutureUpdate#cancel_schedule
        class FutureUpdateCancelScheduleResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleResponse::Data]
          required :data, -> { Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleResponse::Data }

          # @!method initialize(data:)
          #   @param data [Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleResponse::Data]

          # @see Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   external id of the canceled future update subscription
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   @param id [String] external id of the canceled future update subscription
          end
        end
      end
    end
  end
end
