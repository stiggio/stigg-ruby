# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::DataExport#trigger_sync
        class DataExportTriggerSyncParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute destination_id
          #   Provider destination ID to sync. Omit to sync all destinations.
          #
          #   @return [String, nil]
          optional :destination_id, String, api_name: :destinationId

          # @!method initialize(destination_id: nil, request_options: {})
          #   @param destination_id [String] Provider destination ID to sync. Omit to sync all destinations.
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
