# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::DataExport#trigger_sync
        class DataExportTriggerSyncResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Per-destination trigger results across the batch.
          #
          #   @return [Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data]
          required :data, -> { Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data] Per-destination trigger results across the batch.

          # @see Stigg::Models::V1::Events::DataExportTriggerSyncResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute results
            #   Per-destination trigger results
            #
            #   @return [Array<Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data::Result>]
            required :results,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data::Result] }

            # @!method initialize(results:)
            #   Per-destination trigger results across the batch.
            #
            #   @param results [Array<Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data::Result>] Per-destination trigger results

            class Result < Stigg::Internal::Type::BaseModel
              # @!attribute destination_id
              #   Provider destination ID
              #
              #   @return [String]
              required :destination_id, String, api_name: :destinationId

              # @!attribute triggered
              #   True if a transfer was kicked
              #
              #   @return [Boolean]
              required :triggered, Stigg::Internal::Type::Boolean

              # @!attribute error_message
              #   Error message if triggered=false on a hard failure
              #
              #   @return [String, nil]
              optional :error_message, String, api_name: :errorMessage

              # @!attribute transfer_id
              #   Provider-side transfer ID
              #
              #   @return [String, nil]
              optional :transfer_id, String, api_name: :transferId

              # @!method initialize(destination_id:, triggered:, error_message: nil, transfer_id: nil)
              #   Per-destination trigger results.
              #
              #   @param destination_id [String] Provider destination ID
              #
              #   @param triggered [Boolean] True if a transfer was kicked
              #
              #   @param error_message [String] Error message if triggered=false on a hard failure
              #
              #   @param transfer_id [String] Provider-side transfer ID
            end
          end
        end
      end
    end
  end
end
