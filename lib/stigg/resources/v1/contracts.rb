# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Contracts
        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::ContractCreateParams} for more details.
        #
        # Creates a contract for a customer together with all of its (custom)
        # subscriptions in a single atomic operation. Every new subscription is created
        # inside one transaction — any validation or creation failure rolls the whole
        # contract back. Each subscription entry is either a new subscription to create or
        # a reference to an existing custom subscription. Returns the created contract.
        #
        # @overload create(customer_id:, subscriptions:, activation_end_date: nil, activation_start_date: nil, name: nil, po_number: nil, setup_billing: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param customer_id [String] Body param: The customer ref ID the contract belongs to
        #
        # @param subscriptions [Array<Stigg::Models::V1::ContractCreateParams::Subscription>] Body param: The subscriptions to attach to the contract (must be non-empty). Eac
        #
        # @param activation_end_date [Time] Body param: Optional contract activation end date
        #
        # @param activation_start_date [Time] Body param: Optional contract activation start date
        #
        # @param name [String, nil] Body param: Optional contract name
        #
        # @param po_number [String, nil] Body param: Optional purchase-order number
        #
        # @param setup_billing [Boolean] Body param: Whether to set up billing for the contract by creating a billing con
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::ContractCreateResponse]
        #
        # @see Stigg::Models::V1::ContractCreateParams
        def create(params)
          parsed, options = Stigg::V1::ContractCreateParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/contracts",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::Models::V1::ContractCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::ContractRetrieveParams} for more details.
        #
        # Retrieves a single contract by its ID, enriched with a preview of its upcoming
        # (next) invoice when one is available. Returns 404 when no contract with that ID
        # exists in the environment.
        #
        # @overload retrieve(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::ContractRetrieveResponse]
        #
        # @see Stigg::Models::V1::ContractRetrieveParams
        def retrieve(id, params = {})
          parsed, options = Stigg::V1::ContractRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/v1/contracts/%1$s", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::Models::V1::ContractRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::ContractUpdateParams} for more details.
        #
        # Updates a contract's metadata (name, PO number, activation dates) and optionally
        # re-links its subscriptions. Best-effort re-syncs the change to the connected
        # billing provider.
        #
        # @overload update(id, activation_end_date: nil, activation_start_date: nil, name: nil, po_number: nil, setup_billing: nil, subscription_ids: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param activation_end_date [Time] Body param: New activation end date
        #
        # @param activation_start_date [Time] Body param: New activation start date
        #
        # @param name [String, nil] Body param: New contract name
        #
        # @param po_number [String, nil] Body param: New purchase-order number
        #
        # @param setup_billing [Boolean] Body param: Enable billing on a provision-access-only contract by creating a bil
        #
        # @param subscription_ids [Array<String>] Body param: When provided, replaces the set of subscriptions linked to the contr
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::ContractUpdateResponse]
        #
        # @see Stigg::Models::V1::ContractUpdateParams
        def update(id, params = {})
          parsed, options = Stigg::V1::ContractUpdateParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :patch,
            path: ["api/v1/contracts/%1$s", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::Models::V1::ContractUpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::ContractListParams} for more details.
        #
        # Retrieves a cursor-paginated list of contracts in the environment, fetched live
        # from the connected billing provider. Each contract is enriched with a preview of
        # its upcoming (next) invoice when one is available. Returns an empty list when no
        # billing provider is connected. Supports filtering by customer external ID,
        # state, and name.
        #
        # @overload list(after: nil, before: nil, customer_external_id: nil, limit: nil, name: nil, state: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param after [String] Query param: Return items that come after this cursor
        #
        # @param before [String] Query param: Return items that come before this cursor
        #
        # @param customer_external_id [String] Query param: Filter by the exact external ID of the customer the contract belong
        #
        # @param limit [Integer] Query param: Maximum number of items to return
        #
        # @param name [String] Query param: Filter by exact contract name
        #
        # @param state [String] Query param: Filter by contract state. Supports comma-separated values for multi
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::ContractListResponse>]
        #
        # @see Stigg::Models::V1::ContractListParams
        def list(params = {})
          query_params = [:after, :before, :customer_external_id, :limit, :name, :state]
          parsed, options = Stigg::V1::ContractListParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: "api/v1/contracts",
            query: query.transform_keys(customer_external_id: "customerExternalId"),
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::ContractListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::ContractDeleteParams} for more details.
        #
        # Deletes a contract: cancels the contract in the connected billing provider and
        # cancels every subscription linked to it.
        #
        # @overload delete(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::ContractDeleteResponse]
        #
        # @see Stigg::Models::V1::ContractDeleteParams
        def delete(id, params = {})
          parsed, options = Stigg::V1::ContractDeleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/contracts/%1$s/archive", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::Models::V1::ContractDeleteResponse,
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
