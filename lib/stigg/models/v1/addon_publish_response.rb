# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Addons#publish
      class AddonPublishResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Stigg::Models::V1::AddonPublishResponse::Data]
        required :data, -> { Stigg::Models::V1::AddonPublishResponse::Data }

        # @!method initialize(data:)
        #   Response containing task ID for publish operation
        #
        #   @param data [Stigg::Models::V1::AddonPublishResponse::Data]

        # @see Stigg::Models::V1::AddonPublishResponse#data
        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute task_id
          #   Task ID for tracking the async publish operation
          #
          #   @return [String, nil]
          required :task_id, String, api_name: :taskId, nil?: true

          # @!method initialize(task_id:)
          #   @param task_id [String, nil] Task ID for tracking the async publish operation
        end
      end
    end
  end
end
