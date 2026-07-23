# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class DataExport
          class Destinations
            # Some parameter documentations has been truncated, see
            # {Stigg::Models::V1::Events::DataExport::DestinationCreateParams} for more
            # details.
            #
            # Register a destination on the environment's DATA_EXPORT integration.
            # Lazy-creates the integration row + provider recipient on first call. Idempotent
            # on destinationId.
            #
            # @overload create(destination_id:, destination_type:, enabled_models: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
            #
            # @param destination_id [String] Body param: The provider destination ID returned by the embedded SDK on connect
            #
            # @param destination_type [String] Body param: The destination type (e.g. snowflake, bigquery)
            #
            # @param enabled_models [Array<String>] Body param
            #
            # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
            #
            # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Models::V1::Events::DataExport::DestinationCreateResponse]
            #
            # @see Stigg::Models::V1::Events::DataExport::DestinationCreateParams
            def create(params)
              parsed, options = Stigg::V1::Events::DataExport::DestinationCreateParams.dump_request(params)
              header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
              @client.request(
                method: :post,
                path: "api/v1/data-export/destinations",
                headers: parsed.slice(*header_params.keys).transform_keys(header_params),
                body: parsed.except(*header_params.keys),
                model: Stigg::Models::V1::Events::DataExport::DestinationCreateResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Stigg::Models::V1::Events::DataExport::DestinationDeleteParams} for more
            # details.
            #
            # Disconnect a destination: stops the provider sync (deletes the provider
            # destination) and removes it from the DATA_EXPORT integration. Non-destructive —
            # the warehouse table is left intact. Idempotent.
            #
            # @overload delete(destination_id, x_account_id: nil, x_environment_id: nil, request_options: {})
            #
            # @param destination_id [String] Provider destination ID to remove
            #
            # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
            #
            # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse]
            #
            # @see Stigg::Models::V1::Events::DataExport::DestinationDeleteParams
            def delete(destination_id, params = {})
              parsed, options = Stigg::V1::Events::DataExport::DestinationDeleteParams.dump_request(params)
              @client.request(
                method: :delete,
                path: ["api/v1/data-export/destinations/%1$s", destination_id],
                headers: parsed.transform_keys(
                  x_account_id: "x-account-id",
                  x_environment_id: "x-environment-id"
                ),
                model: Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Stigg::Models::V1::Events::DataExport::DestinationUpdateSelectionParams} for
            # more details.
            #
            # Update a destination's entity selection. Pushes the new enabled_models to the
            # provider first, then persists the selection. Applies on the next scheduled
            # transfer.
            #
            # @overload update_selection(destination_id, enabled_models:, integration_id:, x_account_id: nil, x_environment_id: nil, request_options: {})
            #
            # @param destination_id [String] Path param: Provider destination ID to update
            #
            # @param enabled_models [Array<String>] Body param
            #
            # @param integration_id [String] Body param: Target integration row hosting the destination
            #
            # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
            #
            # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Models::V1::Events::DataExport::DestinationUpdateSelectionResponse]
            #
            # @see Stigg::Models::V1::Events::DataExport::DestinationUpdateSelectionParams
            def update_selection(destination_id, params)
              parsed, options = Stigg::V1::Events::DataExport::DestinationUpdateSelectionParams.dump_request(params)
              header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
              @client.request(
                method: :patch,
                path: ["api/v1/data-export/destinations/%1$s", destination_id],
                headers: parsed.slice(*header_params.keys).transform_keys(header_params),
                body: parsed.except(*header_params.keys),
                model: Stigg::Models::V1::Events::DataExport::DestinationUpdateSelectionResponse,
                options: options
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
