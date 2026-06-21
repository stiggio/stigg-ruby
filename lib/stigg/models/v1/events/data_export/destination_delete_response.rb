# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module DataExport
          # @see Stigg::Resources::V1::Events::DataExport::Destinations#delete
          class DestinationDeleteResponse < Stigg::Internal::Type::BaseModel
            # @!attribute data
            #   Current destinations under the DATA_EXPORT integration.
            #
            #   @return [Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data]
            required :data, -> { Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data }

            # @!method initialize(data:)
            #   Response object
            #
            #   @param data [Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data] Current destinations under the DATA_EXPORT integration.

            # @see Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse#data
            class Data < Stigg::Internal::Type::BaseModel
              # @!attribute destinations
              #   Current destinations under the DATA_EXPORT integration
              #
              #   @return [Array<Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination>]
              required :destinations,
                       -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination] }

              # @!method initialize(destinations:)
              #   Current destinations under the DATA_EXPORT integration.
              #
              #   @param destinations [Array<Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination>] Current destinations under the DATA_EXPORT integration

              class Destination < Stigg::Internal::Type::BaseModel
                # @!attribute connected_at
                #   ISO8601 timestamp of when the destination was connected
                #
                #   @return [String]
                required :connected_at, String, api_name: :connectedAt

                # @!attribute destination_id
                #   Provider destination ID
                #
                #   @return [String]
                required :destination_id, String, api_name: :destinationId

                # @!attribute type
                #   Destination type (snowflake, bigquery, ...)
                #
                #   @return [String]
                required :type, String

                # @!attribute connection_status
                #   Connection status of the destination (connected, failed)
                #
                #   @return [String, nil]
                optional :connection_status, String, api_name: :connectionStatus

                # @!attribute enabled_models
                #
                #   @return [Array<String>, nil]
                optional :enabled_models, Stigg::Internal::Type::ArrayOf[String], api_name: :enabledModels

                # @!attribute last_sync_status
                #   Latest sync snapshot for the destination, refreshed by the provider webhook
                #
                #   @return [Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination::LastSyncStatus, nil]
                optional :last_sync_status,
                         -> { Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination::LastSyncStatus },
                         api_name: :lastSyncStatus

                # @!method initialize(connected_at:, destination_id:, type:, connection_status: nil, enabled_models: nil, last_sync_status: nil)
                #   A single destination entry under the DATA_EXPORT integration.
                #
                #   @param connected_at [String] ISO8601 timestamp of when the destination was connected
                #
                #   @param destination_id [String] Provider destination ID
                #
                #   @param type [String] Destination type (snowflake, bigquery, ...)
                #
                #   @param connection_status [String] Connection status of the destination (connected, failed)
                #
                #   @param enabled_models [Array<String>]
                #
                #   @param last_sync_status [Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination::LastSyncStatus] Latest sync snapshot for the destination, refreshed by the provider webhook

                # @see Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination#last_sync_status
                class LastSyncStatus < Stigg::Internal::Type::BaseModel
                  # @!attribute finished_at
                  #   ISO8601 timestamp of when the latest sync finished
                  #
                  #   @return [String]
                  required :finished_at, String, api_name: :finishedAt

                  # @!attribute status
                  #   Sync status (PENDING, RUNNING, INCOMPLETE, FAILED, SUCCEEDED, CANCELLED)
                  #
                  #   @return [String]
                  required :status, String

                  # @!attribute transfer_id
                  #   Provider transfer ID of the latest sync
                  #
                  #   @return [String]
                  required :transfer_id, String, api_name: :transferId

                  # @!attribute blamed_party
                  #   Party responsible for a failed sync, as reported by the data-export provider
                  #
                  #   @return [String, nil]
                  optional :blamed_party, String, api_name: :blamedParty

                  # @!attribute failure_message
                  #   Customer-friendly failure message, when the latest sync failed
                  #
                  #   @return [String, nil]
                  optional :failure_message, String, api_name: :failureMessage

                  # @!attribute rows_transferred
                  #   Number of rows transferred in the latest sync
                  #
                  #   @return [Float, nil]
                  optional :rows_transferred, Float, api_name: :rowsTransferred

                  # @!method initialize(finished_at:, status:, transfer_id:, blamed_party: nil, failure_message: nil, rows_transferred: nil)
                  #   Latest sync snapshot for the destination, refreshed by the provider webhook
                  #
                  #   @param finished_at [String] ISO8601 timestamp of when the latest sync finished
                  #
                  #   @param status [String] Sync status (PENDING, RUNNING, INCOMPLETE, FAILED, SUCCEEDED, CANCELLED)
                  #
                  #   @param transfer_id [String] Provider transfer ID of the latest sync
                  #
                  #   @param blamed_party [String] Party responsible for a failed sync, as reported by the data-export provider
                  #
                  #   @param failure_message [String] Customer-friendly failure message, when the latest sync failed
                  #
                  #   @param rows_transferred [Float] Number of rows transferred in the latest sync
                end
              end
            end
          end
        end
      end
    end
  end
end
