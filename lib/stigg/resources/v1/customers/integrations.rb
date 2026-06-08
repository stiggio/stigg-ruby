# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Customers
        class Integrations
          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Customers::IntegrationRetrieveParams} for more details.
          #
          # Retrieves a specific integration for a customer by integration ID.
          #
          # @overload retrieve(integration_id, id:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param integration_id [String] Path param: Integration details
          #
          # @param id [String] Path param: Customer slug
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::CustomerIntegrationResponse]
          #
          # @see Stigg::Models::V1::Customers::IntegrationRetrieveParams
          def retrieve(integration_id, params)
            parsed, options = Stigg::V1::Customers::IntegrationRetrieveParams.dump_request(params)
            id =
              parsed.delete(:id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["api/v1/customers/%1$s/integrations/%2$s", id, integration_id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::V1::CustomerIntegrationResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Customers::IntegrationUpdateParams} for more details.
          #
          # Updates a customer's integration link, such as changing the synced external
          # entity ID.
          #
          # @overload update(integration_id, id:, synced_entity_id:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param integration_id [String] Path param: Integration details
          #
          # @param id [String] Path param: Customer slug
          #
          # @param synced_entity_id [String, nil] Body param: Synced entity id
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::CustomerIntegrationResponse]
          #
          # @see Stigg::Models::V1::Customers::IntegrationUpdateParams
          def update(integration_id, params)
            parsed, options = Stigg::V1::Customers::IntegrationUpdateParams.dump_request(params)
            id =
              parsed.delete(:id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :patch,
              path: ["api/v1/customers/%1$s/integrations/%2$s", id, integration_id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Stigg::V1::CustomerIntegrationResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Customers::IntegrationListParams} for more details.
          #
          # Retrieves a paginated list of a customer's external integrations (billing, CRM,
          # etc.).
          #
          # @overload list(id, after: nil, before: nil, limit: nil, vendor_identifier: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Path param: The unique identifier of the entity
          #
          # @param after [String] Query param: Return items that come after this cursor
          #
          # @param before [String] Query param: Return items that come before this cursor
          #
          # @param limit [Integer] Query param: Maximum number of items to return
          #
          # @param vendor_identifier [Array<Symbol, Stigg::Models::V1::Customers::IntegrationListParams::VendorIdentifier>] Query param: Filter by vendor identifier. Supports comma-separated values for mu
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Customers::IntegrationListResponse>]
          #
          # @see Stigg::Models::V1::Customers::IntegrationListParams
          def list(id, params = {})
            query_params = [:after, :before, :limit, :vendor_identifier]
            parsed, options = Stigg::V1::Customers::IntegrationListParams.dump_request(params)
            query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :get,
              path: ["api/v1/customers/%1$s/integrations", id],
              query: query.transform_keys(vendor_identifier: "vendorIdentifier"),
              headers: parsed.except(*query_params).transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              page: Stigg::Internal::MyCursorIDPage,
              model: Stigg::Models::V1::Customers::IntegrationListResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Customers::IntegrationLinkParams} for more details.
          #
          # Links a customer to an external integration by specifying the vendor and
          # external entity ID.
          #
          # @overload link(path_id, body_id:, synced_entity_id:, vendor_identifier:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param path_id [String] Path param: The unique identifier of the entity
          #
          # @param body_id [String] Body param: Integration details
          #
          # @param synced_entity_id [String] Body param: Synced entity id
          #
          # @param vendor_identifier [Symbol, Stigg::Models::V1::Customers::IntegrationLinkParams::VendorIdentifier] Body param: The vendor identifier of integration
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::CustomerIntegrationResponse]
          #
          # @see Stigg::Models::V1::Customers::IntegrationLinkParams
          def link(path_id, params)
            parsed, options = Stigg::V1::Customers::IntegrationLinkParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :post,
              path: ["api/v1/customers/%1$s/integrations", path_id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Stigg::V1::CustomerIntegrationResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Customers::IntegrationUnlinkParams} for more details.
          #
          # Removes the link between a customer and an external integration.
          #
          # @overload unlink(integration_id, id:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param integration_id [String] Path param: Integration details
          #
          # @param id [String] Path param: Customer slug
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::CustomerIntegrationResponse]
          #
          # @see Stigg::Models::V1::Customers::IntegrationUnlinkParams
          def unlink(integration_id, params)
            parsed, options = Stigg::V1::Customers::IntegrationUnlinkParams.dump_request(params)
            id =
              parsed.delete(:id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["api/v1/customers/%1$s/integrations/%2$s", id, integration_id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::V1::CustomerIntegrationResponse,
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
