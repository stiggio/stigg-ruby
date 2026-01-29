# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#import
      class SubscriptionImportResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Stigg::Models::V1::SubscriptionImportResponse::Data]
        required :data, -> { Stigg::Models::V1::SubscriptionImportResponse::Data }

        # @!method initialize(data:)
        #   Response object
        #
        #   @param data [Stigg::Models::V1::SubscriptionImportResponse::Data]

        # @see Stigg::Models::V1::SubscriptionImportResponse#data
        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute task_id
          #   Unique identifier for the import task
          #
          #   @return [String]
          required :task_id, String, api_name: :taskId

          # @!method initialize(task_id:)
          #   @param task_id [String] Unique identifier for the import task
        end
      end
    end
  end
end
