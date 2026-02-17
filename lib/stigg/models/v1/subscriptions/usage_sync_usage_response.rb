# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Subscriptions
        # @see Stigg::Resources::V1::Subscriptions::Usage#sync_usage
        class UsageSyncUsageResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Result of triggering a subscription usage sync.
          #
          #   @return [Stigg::Models::V1::Subscriptions::UsageSyncUsageResponse::Data]
          required :data, -> { Stigg::Models::V1::Subscriptions::UsageSyncUsageResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Subscriptions::UsageSyncUsageResponse::Data] Result of triggering a subscription usage sync.

          # @see Stigg::Models::V1::Subscriptions::UsageSyncUsageResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute triggered
            #   Whether usage was synced to the billing provider
            #
            #   @return [Boolean]
            required :triggered, Stigg::Internal::Type::Boolean

            # @!method initialize(triggered:)
            #   Result of triggering a subscription usage sync.
            #
            #   @param triggered [Boolean] Whether usage was synced to the billing provider
          end
        end
      end
    end
  end
end
