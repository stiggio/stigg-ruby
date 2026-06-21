# typed: strong

module Stigg
  module Models
    module V1
      module Events
        module DataExport
          class DestinationDeleteResponse < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse,
                  Stigg::Internal::AnyHash
                )
              end

            # Current destinations under the DATA_EXPORT integration.
            sig do
              returns(
                Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            # Response object
            sig do
              params(
                data:
                  Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Current destinations under the DATA_EXPORT integration.
              data:
            )
            end

            sig do
              override.returns(
                {
                  data:
                    Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data
                }
              )
            end
            def to_hash
            end

            class Data < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data,
                    Stigg::Internal::AnyHash
                  )
                end

              # Current destinations under the DATA_EXPORT integration
              sig do
                returns(
                  T::Array[
                    Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination
                  ]
                )
              end
              attr_accessor :destinations

              # Current destinations under the DATA_EXPORT integration.
              sig do
                params(
                  destinations:
                    T::Array[
                      Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Current destinations under the DATA_EXPORT integration
                destinations:
              )
              end

              sig do
                override.returns(
                  {
                    destinations:
                      T::Array[
                        Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination
                      ]
                  }
                )
              end
              def to_hash
              end

              class Destination < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination,
                      Stigg::Internal::AnyHash
                    )
                  end

                # ISO8601 timestamp of when the destination was connected
                sig { returns(String) }
                attr_accessor :connected_at

                # Provider destination ID
                sig { returns(String) }
                attr_accessor :destination_id

                # Destination type (snowflake, bigquery, ...)
                sig { returns(String) }
                attr_accessor :type

                # Connection status of the destination (connected, failed)
                sig { returns(T.nilable(String)) }
                attr_reader :connection_status

                sig { params(connection_status: String).void }
                attr_writer :connection_status

                sig { returns(T.nilable(T::Array[String])) }
                attr_reader :enabled_models

                sig { params(enabled_models: T::Array[String]).void }
                attr_writer :enabled_models

                # Latest sync snapshot for the destination, refreshed by the provider webhook
                sig do
                  returns(
                    T.nilable(
                      Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination::LastSyncStatus
                    )
                  )
                end
                attr_reader :last_sync_status

                sig do
                  params(
                    last_sync_status:
                      Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination::LastSyncStatus::OrHash
                  ).void
                end
                attr_writer :last_sync_status

                # A single destination entry under the DATA_EXPORT integration.
                sig do
                  params(
                    connected_at: String,
                    destination_id: String,
                    type: String,
                    connection_status: String,
                    enabled_models: T::Array[String],
                    last_sync_status:
                      Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination::LastSyncStatus::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(
                  # ISO8601 timestamp of when the destination was connected
                  connected_at:,
                  # Provider destination ID
                  destination_id:,
                  # Destination type (snowflake, bigquery, ...)
                  type:,
                  # Connection status of the destination (connected, failed)
                  connection_status: nil,
                  enabled_models: nil,
                  # Latest sync snapshot for the destination, refreshed by the provider webhook
                  last_sync_status: nil
                )
                end

                sig do
                  override.returns(
                    {
                      connected_at: String,
                      destination_id: String,
                      type: String,
                      connection_status: String,
                      enabled_models: T::Array[String],
                      last_sync_status:
                        Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination::LastSyncStatus
                    }
                  )
                end
                def to_hash
                end

                class LastSyncStatus < Stigg::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse::Data::Destination::LastSyncStatus,
                        Stigg::Internal::AnyHash
                      )
                    end

                  # ISO8601 timestamp of when the latest sync finished
                  sig { returns(String) }
                  attr_accessor :finished_at

                  # Sync status (PENDING, RUNNING, INCOMPLETE, FAILED, SUCCEEDED, CANCELLED)
                  sig { returns(String) }
                  attr_accessor :status

                  # Provider transfer ID of the latest sync
                  sig { returns(String) }
                  attr_accessor :transfer_id

                  # Party responsible for a failed sync, as reported by the data-export provider
                  sig { returns(T.nilable(String)) }
                  attr_reader :blamed_party

                  sig { params(blamed_party: String).void }
                  attr_writer :blamed_party

                  # Customer-friendly failure message, when the latest sync failed
                  sig { returns(T.nilable(String)) }
                  attr_reader :failure_message

                  sig { params(failure_message: String).void }
                  attr_writer :failure_message

                  # Number of rows transferred in the latest sync
                  sig { returns(T.nilable(Float)) }
                  attr_reader :rows_transferred

                  sig { params(rows_transferred: Float).void }
                  attr_writer :rows_transferred

                  # Latest sync snapshot for the destination, refreshed by the provider webhook
                  sig do
                    params(
                      finished_at: String,
                      status: String,
                      transfer_id: String,
                      blamed_party: String,
                      failure_message: String,
                      rows_transferred: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # ISO8601 timestamp of when the latest sync finished
                    finished_at:,
                    # Sync status (PENDING, RUNNING, INCOMPLETE, FAILED, SUCCEEDED, CANCELLED)
                    status:,
                    # Provider transfer ID of the latest sync
                    transfer_id:,
                    # Party responsible for a failed sync, as reported by the data-export provider
                    blamed_party: nil,
                    # Customer-friendly failure message, when the latest sync failed
                    failure_message: nil,
                    # Number of rows transferred in the latest sync
                    rows_transferred: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        finished_at: String,
                        status: String,
                        transfer_id: String,
                        blamed_party: String,
                        failure_message: String,
                        rows_transferred: Float
                      }
                    )
                  end
                  def to_hash
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
