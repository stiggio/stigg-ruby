# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class DataExport
          # @return [Stigg::Resources::V1::Events::DataExport::Destinations]
          attr_reader :destinations

          # Mint a scoped JWT for the FE embedded SDK. Lazy-creates the DATA_EXPORT
          # integration if needed.
          #
          # @overload mint_scoped_token(application_origin:, destination_type: nil, request_options: {})
          #
          # @param application_origin [String] FE origin the resulting JWT is bound to (provider-side anti-fraud)
          #
          # @param destination_type [String] Pin the token to a specific warehouse connect flow
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::DataExportMintScopedTokenResponse]
          #
          # @see Stigg::Models::V1::Events::DataExportMintScopedTokenParams
          def mint_scoped_token(params)
            parsed, options = Stigg::V1::Events::DataExportMintScopedTokenParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/data-export/scoped-token",
              body: parsed,
              model: Stigg::Models::V1::Events::DataExportMintScopedTokenResponse,
              options: options
            )
          end

          # Trigger a sync for one destination or all destinations under the provider
          # entity.
          #
          # @overload trigger_sync(destination_id: nil, request_options: {})
          #
          # @param destination_id [String] Provider destination ID to sync. Omit to sync all destinations.
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::DataExportTriggerSyncResponse]
          #
          # @see Stigg::Models::V1::Events::DataExportTriggerSyncParams
          def trigger_sync(params = {})
            parsed, options = Stigg::V1::Events::DataExportTriggerSyncParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/data-export/sync",
              body: parsed,
              model: Stigg::Models::V1::Events::DataExportTriggerSyncResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Stigg::Client]
          def initialize(client:)
            @client = client
            @destinations = Stigg::Resources::V1::Events::DataExport::Destinations.new(client: client)
          end
        end
      end
    end
  end
end
