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

                # @!method initialize(connected_at:, destination_id:, type:)
                #   A single destination entry under the DATA_EXPORT integration.
                #
                #   @param connected_at [String] ISO8601 timestamp of when the destination was connected
                #
                #   @param destination_id [String] Provider destination ID
                #
                #   @param type [String] Destination type (snowflake, bigquery, ...)
              end
            end
          end
        end
      end
    end
  end
end
