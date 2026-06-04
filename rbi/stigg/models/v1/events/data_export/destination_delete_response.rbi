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

                # A single destination entry under the DATA_EXPORT integration.
                sig do
                  params(
                    connected_at: String,
                    destination_id: String,
                    type: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # ISO8601 timestamp of when the destination was connected
                  connected_at:,
                  # Provider destination ID
                  destination_id:,
                  # Destination type (snowflake, bigquery, ...)
                  type:
                )
                end

                sig do
                  override.returns(
                    {
                      connected_at: String,
                      destination_id: String,
                      type: String
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
