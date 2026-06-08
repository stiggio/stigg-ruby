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
          # @overload create(id:, display_name:, description: nil, metadata: nil, symbol: nil, units: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Body param: The unique identifier for the new custom currency
          #
          # @param display_name [String] Body param: The display name of the custom currency
          #
          # @param description [String] Body param: Description of the currency
          #
          # @param metadata [Hash{Symbol=>String}] Body param: Additional metadata to attach to the custom currency
          #
          # @param symbol [String] Body param: The symbol used to represent the custom currency
          #
          # @param units [Stigg::Models::V1::Credits::CustomCurrencyCreateParams::Units] Body param: Singular and plural unit labels for a custom currency. Both fields a
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::CustomCurrencyResponse]
          #
          # @see Stigg::Models::V1::Credits::CustomCurrencyCreateParams
          def create(params)
            parsed, options = Stigg::V1::Credits::CustomCurrencyCreateParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :post,
              path: "api/v1/credits/custom-currencies",
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Stigg::V1::Credits::CustomCurrencyResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Credits::CustomCurrencyUpdateParams} for more details.
          #
          # Updates an existing custom currency. Only the supplied fields are modified.
          #
          # @overload update(currency_id, description: nil, display_name: nil, metadata: nil, symbol: nil, units: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param currency_id [String] Path param: The reference ID of the custom currency
          #
          # @param description [String, nil] Body param: A human-readable description of the custom currency. Send an empty s
          #
          # @param display_name [String] Body param: The display name of the custom currency
          #
          # @param metadata [Hash{Symbol=>String}, nil] Body param: Additional metadata to attach to the custom currency
          #
          # @param symbol [String, nil] Body param: The symbol used to represent the custom currency. Send an empty stri
          #
          # @param units [Stigg::Models::V1::Credits::CustomCurrencyUpdateParams::Units] Body param: Singular and plural unit labels for a custom currency. Both fields a
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::CustomCurrencyResponse]
          #
          # @see Stigg::Models::V1::Credits::CustomCurrencyUpdateParams
          def update(currency_id, params = {})
            parsed, options = Stigg::V1::Credits::CustomCurrencyUpdateParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :patch,
              path: ["api/v1/credits/custom-currencies/%1$s", currency_id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
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
          # @overload list(after: nil, before: nil, limit: nil, status: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param after [String] Query param: Return items that come after this cursor
          #
          # @param before [String] Query param: Return items that come before this cursor
          #
          # @param limit [Integer] Query param: Maximum number of items to return
          #
          # @param status [Array<Symbol, Stigg::Models::V1::Credits::CustomCurrencyListParams::Status>] Query param: Filter by custom currency status. Supports comma-separated values (
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Credits::CustomCurrencyListResponse>]
          #
          # @see Stigg::Models::V1::Credits::CustomCurrencyListParams
          def list(params = {})
            query_params = [:after, :before, :limit, :status]
            parsed, options = Stigg::V1::Credits::CustomCurrencyListParams.dump_request(params)
            query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :get,
              path: "api/v1/credits/custom-currencies",
              query: query,
              headers: parsed.except(*query_params).transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              page: Stigg::Internal::MyCursorIDPage,
              model: Stigg::Models::V1::Credits::CustomCurrencyListResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Credits::CustomCurrencyArchiveParams} for more details.
          #
          # Archives a custom currency. Fails if the currency is still associated with any
          # active plan or addon — use the associated-entities endpoint first to inspect
          # dependencies.
          #
          # @overload archive(currency_id, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param currency_id [String] The reference ID of the custom currency
          #
          # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
          #
          # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::CustomCurrencyResponse]
          #
          # @see Stigg::Models::V1::Credits::CustomCurrencyArchiveParams
          def archive(currency_id, params = {})
            parsed, options = Stigg::V1::Credits::CustomCurrencyArchiveParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v1/credits/custom-currencies/%1$s/archive", currency_id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::V1::Credits::CustomCurrencyResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Credits::CustomCurrencyListAssociatedEntitiesParams} for
          # more details.
          #
          # Lists the active plans and addons that reference a custom currency. Useful
          # before archiving to inspect dependencies.
          #
          # @overload list_associated_entities(currency_id, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param currency_id [String] The reference ID of the custom currency
          #
          # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
          #
          # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::CustomCurrencyListAssociatedEntitiesResponse]
          #
          # @see Stigg::Models::V1::Credits::CustomCurrencyListAssociatedEntitiesParams
          def list_associated_entities(currency_id, params = {})
            parsed, options = Stigg::V1::Credits::CustomCurrencyListAssociatedEntitiesParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["api/v1/credits/custom-currencies/%1$s/associated-entities", currency_id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::Models::V1::Credits::CustomCurrencyListAssociatedEntitiesResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Credits::CustomCurrencyUnarchiveParams} for more details.
          #
          # Restores a previously archived custom currency. Fails if another active currency
          # with the same ID already exists.
          #
          # @overload unarchive(currency_id, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param currency_id [String] The reference ID of the custom currency
          #
          # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
          #
          # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::CustomCurrencyResponse]
          #
          # @see Stigg::Models::V1::Credits::CustomCurrencyUnarchiveParams
          def unarchive(currency_id, params = {})
            parsed, options = Stigg::V1::Credits::CustomCurrencyUnarchiveParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v1/credits/custom-currencies/%1$s/unarchive", currency_id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::V1::Credits::CustomCurrencyResponse,
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
