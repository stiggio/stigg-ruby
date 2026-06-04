# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class DataExport
          class Destinations
            # Register a destination on the environment's DATA_EXPORT integration.
            # Lazy-creates the integration row + provider recipient on first call. Idempotent
            # on destinationId.
            sig do
              params(
                destination_id: String,
                destination_type: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(
                Stigg::Models::V1::Events::DataExport::DestinationCreateResponse
              )
            end
            def create(
              # The provider destination ID returned by the embedded SDK on connect
              destination_id:,
              # The destination type (e.g. snowflake, bigquery)
              destination_type:,
              request_options: {}
            )
            end

            # Remove a destination from the DATA_EXPORT integration metadata. Idempotent.
            sig do
              params(
                destination_id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(
                Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse
              )
            end
            def delete(
              # Provider destination ID to remove
              destination_id,
              request_options: {}
            )
            end

            # @api private
            sig { params(client: Stigg::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
