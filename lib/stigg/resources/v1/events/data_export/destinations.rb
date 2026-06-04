# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class DataExport
          class Destinations
            # Register a destination on the environment's DATA_EXPORT integration.
            # Lazy-creates the integration row + provider recipient on first call. Idempotent
            # on destinationId.
            #
            # @overload create(destination_id:, destination_type:, request_options: {})
            #
            # @param destination_id [String] The provider destination ID returned by the embedded SDK on connect
            #
            # @param destination_type [String] The destination type (e.g. snowflake, bigquery)
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Models::V1::Events::DataExport::DestinationCreateResponse]
            #
            # @see Stigg::Models::V1::Events::DataExport::DestinationCreateParams
            def create(params)
              parsed, options = Stigg::V1::Events::DataExport::DestinationCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "api/v1/data-export/destinations",
                body: parsed,
                model: Stigg::Models::V1::Events::DataExport::DestinationCreateResponse,
                options: options
              )
            end

            # Remove a destination from the DATA_EXPORT integration metadata. Idempotent.
            #
            # @overload delete(destination_id, request_options: {})
            #
            # @param destination_id [String] Provider destination ID to remove
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse]
            #
            # @see Stigg::Models::V1::Events::DataExport::DestinationDeleteParams
            def delete(destination_id, params = {})
              @client.request(
                method: :delete,
                path: ["api/v1/data-export/destinations/%1$s", destination_id],
                model: Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse,
                options: params[:request_options]
              )
            end

            # @api private
            #
            # @param client [Stigg::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
