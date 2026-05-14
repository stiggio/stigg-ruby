# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Credits
        # Operations related to custom currencies
        class CustomCurrencies
          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Credits::CustomCurrencyCreateParams} for more details.
          #
          # Creates a new custom currency in the environment.
          #
          # @overload create(id:, display_name:, description: nil, metadata: nil, symbol: nil, units: nil, request_options: {})
          #
          # @param id [String] The unique identifier for the new custom currency
          #
          # @param display_name [String] The display name of the custom currency
          #
          # @param description [String] Description of the currency
          #
          # @param metadata [Hash{Symbol=>String}] Additional metadata to attach to the custom currency
          #
          # @param symbol [String] The symbol used to represent the custom currency
          #
          # @param units [Stigg::Models::V1::Credits::CustomCurrencyCreateParams::Units] Singular and plural unit labels for a custom currency. Both fields are required
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::CustomCurrencyResponse]
          #
          # @see Stigg::Models::V1::Credits::CustomCurrencyCreateParams
          def create(params)
            parsed, options = Stigg::V1::Credits::CustomCurrencyCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/credits/custom-currencies",
              body: parsed,
              model: Stigg::V1::Credits::CustomCurrencyResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Credits::CustomCurrencyUpdateParams} for more details.
          #
          # Updates an existing custom currency. Only the supplied fields are modified.
          #
          # @overload update(currency_id, description: nil, display_name: nil, metadata: nil, symbol: nil, units: nil, request_options: {})
          #
          # @param currency_id [String] The reference ID of the custom currency
          #
          # @param description [String, nil] A human-readable description of the custom currency. Send an empty string to cle
          #
          # @param display_name [String] The display name of the custom currency
          #
          # @param metadata [Hash{Symbol=>String}, nil] Additional metadata to attach to the custom currency
          #
          # @param symbol [String, nil] The symbol used to represent the custom currency. Send an empty string to clear.
          #
          # @param units [Stigg::Models::V1::Credits::CustomCurrencyUpdateParams::Units] Singular and plural unit labels for a custom currency. Both fields are required
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::CustomCurrencyResponse]
          #
          # @see Stigg::Models::V1::Credits::CustomCurrencyUpdateParams
          def update(currency_id, params = {})
            parsed, options = Stigg::V1::Credits::CustomCurrencyUpdateParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["api/v1/credits/custom-currencies/%1$s", currency_id],
              body: parsed,
              model: Stigg::V1::Credits::CustomCurrencyResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Credits::CustomCurrencyListParams} for more details.
          #
          # Retrieves a paginated list of custom currencies in the environment. Archived
          # currencies are excluded by default; pass `status=ARCHIVED` (or
          # `status=ACTIVE,ARCHIVED`) to include them.
          #
          # @overload list(after: nil, before: nil, limit: nil, status: nil, request_options: {})
          #
          # @param after [String] Return items that come after this cursor
          #
          # @param before [String] Return items that come before this cursor
          #
          # @param limit [Integer] Maximum number of items to return
          #
          # @param status [Array<Symbol, Stigg::Models::V1::Credits::CustomCurrencyListParams::Status>] Filter by custom currency status. Supports comma-separated values (e.g., `ACTIVE
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Credits::CustomCurrencyListResponse>]
          #
          # @see Stigg::Models::V1::Credits::CustomCurrencyListParams
          def list(params = {})
            parsed, options = Stigg::V1::Credits::CustomCurrencyListParams.dump_request(params)
            query = Stigg::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "api/v1/credits/custom-currencies",
              query: query,
              page: Stigg::Internal::MyCursorIDPage,
              model: Stigg::Models::V1::Credits::CustomCurrencyListResponse,
              options: options
            )
          end

          # Archives a custom currency. Fails if the currency is still associated with any
          # active plan or addon — use the associated-entities endpoint first to inspect
          # dependencies.
          #
          # @overload archive(currency_id, request_options: {})
          #
          # @param currency_id [String] The reference ID of the custom currency
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::CustomCurrencyResponse]
          #
          # @see Stigg::Models::V1::Credits::CustomCurrencyArchiveParams
          def archive(currency_id, params = {})
            @client.request(
              method: :post,
              path: ["api/v1/credits/custom-currencies/%1$s/archive", currency_id],
              model: Stigg::V1::Credits::CustomCurrencyResponse,
              options: params[:request_options]
            )
          end

          # Lists the active plans and addons that reference a custom currency. Useful
          # before archiving to inspect dependencies.
          #
          # @overload list_associated_entities(currency_id, request_options: {})
          #
          # @param currency_id [String] The reference ID of the custom currency
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::CustomCurrencyListAssociatedEntitiesResponse]
          #
          # @see Stigg::Models::V1::Credits::CustomCurrencyListAssociatedEntitiesParams
          def list_associated_entities(currency_id, params = {})
            @client.request(
              method: :get,
              path: ["api/v1/credits/custom-currencies/%1$s/associated-entities", currency_id],
              model: Stigg::Models::V1::Credits::CustomCurrencyListAssociatedEntitiesResponse,
              options: params[:request_options]
            )
          end

          # Restores a previously archived custom currency. Fails if another active currency
          # with the same ID already exists.
          #
          # @overload unarchive(currency_id, request_options: {})
          #
          # @param currency_id [String] The reference ID of the custom currency
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::CustomCurrencyResponse]
          #
          # @see Stigg::Models::V1::Credits::CustomCurrencyUnarchiveParams
          def unarchive(currency_id, params = {})
            @client.request(
              method: :post,
              path: ["api/v1/credits/custom-currencies/%1$s/unarchive", currency_id],
              model: Stigg::V1::Credits::CustomCurrencyResponse,
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
