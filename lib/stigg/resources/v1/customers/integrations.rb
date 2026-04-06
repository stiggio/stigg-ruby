# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Customers
        class Integrations
          # Retrieves a specific integration for a customer by integration ID.
          #
          # @overload retrieve(integration_id, id:, request_options: {})
          #
          # @param integration_id [String] Integration details
          #
          # @param id [String] Customer slug
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Customers::IntegrationRetrieveResponse]
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
              model: Stigg::Models::V1::Customers::IntegrationRetrieveResponse,
              options: options
            )
          end

          # Updates a customer's integration link, such as changing the synced external
          # entity ID.
          #
          # @overload update(integration_id, id:, synced_entity_id:, request_options: {})
          #
          # @param integration_id [String] Path param: Integration details
          #
          # @param id [String] Path param: Customer slug
          #
          # @param synced_entity_id [String, nil] Body param: Synced entity id
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Customers::IntegrationUpdateResponse]
          #
          # @see Stigg::Models::V1::Customers::IntegrationUpdateParams
          def update(integration_id, params)
            parsed, options = Stigg::V1::Customers::IntegrationUpdateParams.dump_request(params)
            id =
              parsed.delete(:id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["api/v1/customers/%1$s/integrations/%2$s", id, integration_id],
              body: parsed,
              model: Stigg::Models::V1::Customers::IntegrationUpdateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Customers::IntegrationListParams} for more details.
          #
          # Retrieves a paginated list of a customer's external integrations (billing, CRM,
          # etc.).
          #
          # @overload list(id, after: nil, before: nil, limit: nil, vendor_identifier: nil, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param after [String] Return items that come after this cursor
          #
          # @param before [String] Return items that come before this cursor
          #
          # @param limit [Integer] Maximum number of items to return
          #
          # @param vendor_identifier [String] Filter by vendor identifier. Supports comma-separated values for multiple vendor
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Customers::IntegrationListResponse>]
          #
          # @see Stigg::Models::V1::Customers::IntegrationListParams
          def list(id, params = {})
            parsed, options = Stigg::V1::Customers::IntegrationListParams.dump_request(params)
            query = Stigg::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["api/v1/customers/%1$s/integrations", id],
              query: query.transform_keys(vendor_identifier: "vendorIdentifier"),
              page: Stigg::Internal::MyCursorIDPage,
              model: Stigg::Models::V1::Customers::IntegrationListResponse,
              options: options
            )
          end

          # Links a customer to an external integration by specifying the vendor and
          # external entity ID.
          #
          # @overload link(path_id, body_id:, synced_entity_id:, vendor_identifier:, request_options: {})
          #
          # @param path_id [String] The unique identifier of the entity
          #
          # @param body_id [String] Integration details
          #
          # @param synced_entity_id [String] Synced entity id
          #
          # @param vendor_identifier [Symbol, Stigg::Models::V1::Customers::IntegrationLinkParams::VendorIdentifier] The vendor identifier of integration
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Customers::IntegrationLinkResponse]
          #
          # @see Stigg::Models::V1::Customers::IntegrationLinkParams
          def link(path_id, params)
            parsed, options = Stigg::V1::Customers::IntegrationLinkParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v1/customers/%1$s/integrations", path_id],
              body: parsed,
              model: Stigg::Models::V1::Customers::IntegrationLinkResponse,
              options: options
            )
          end

          # Removes the link between a customer and an external integration.
          #
          # @overload unlink(integration_id, id:, request_options: {})
          #
          # @param integration_id [String] Integration details
          #
          # @param id [String] Customer slug
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Customers::IntegrationUnlinkResponse]
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
              model: Stigg::Models::V1::Customers::IntegrationUnlinkResponse,
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
