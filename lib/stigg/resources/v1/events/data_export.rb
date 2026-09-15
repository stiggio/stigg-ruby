# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class DataExport
          # @return [Stigg::Resources::V1::Events::DataExport::Destinations]
          attr_reader :destinations

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Events::DataExportListModelsParams} for more details.
          #
          # List the catalog of data-export models the customer can opt into when connecting
          # a destination.
          #
          # @overload list_models(x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
          #
          # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::DataExportListModelsResponse]
          #
          # @see Stigg::Models::V1::Events::DataExportListModelsParams
          def list_models(params = {})
            parsed, options = Stigg::V1::Events::DataExportListModelsParams.dump_request(params)
            @client.request(
              method: :get,
              path: "api/v1/data-export/models",
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::Models::V1::Events::DataExportListModelsResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Events::DataExportTriggerSyncParams} for more details.
          #
          # Trigger a sync for one destination or all destinations under the provider
          # entity.
          #
          # @overload trigger_sync(destination_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param destination_id [String] Body param: Provider destination ID to sync. Omit to sync all destinations.
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::DataExportTriggerSyncResponse]
          #
          # @see Stigg::Models::V1::Events::DataExportTriggerSyncParams
          def trigger_sync(params = {})
            parsed, options = Stigg::V1::Events::DataExportTriggerSyncParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :post,
              path: "api/v1/data-export/sync",
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
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
