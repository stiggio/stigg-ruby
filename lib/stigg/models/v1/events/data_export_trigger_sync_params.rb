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

          # @!attribute x_account_id
          #
          #   @return [String, nil]
          optional :x_account_id, String

          # @!attribute x_environment_id
          #
          #   @return [String, nil]
          optional :x_environment_id, String

          # @!method initialize(destination_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #   @param destination_id [String] Provider destination ID to sync. Omit to sync all destinations.
          #
          #   @param x_account_id [String]
          #
          #   @param x_environment_id [String]
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
