# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Customers
        class Entities
          class Entitlements
            # Some parameter documentations has been truncated, see
            # {Stigg::Models::V1::Customers::Entities::EntitlementListParams} for more
            # details.
            #
            # Returns a cursor-paginated list of entity entitlements for the given customer.
            # An entity entitlement ties an entity to a feature or currency with a usage limit
            # and reset cadence.
            #
            # @overload list(id, after: nil, before: nil, currency_id: nil, entity_id: nil, feature_id: nil, limit: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
            #
            # @param id [String] Path param: The customer identifier (owner) the entity entitlements belong to
            #
            # @param after [String] Query param: Return items that come after this cursor
            #
            # @param before [String] Query param: Return items that come before this cursor
            #
            # @param currency_id [String] Query param: Filter entity entitlements to a specific currency, by its ID. Mutua
            #
            # @param entity_id [String] Query param: Filter entity entitlements to a specific entity ID
            #
            # @param feature_id [String] Query param: Filter entity entitlements to a specific feature, by its ID. Mutual
            #
            # @param limit [Integer] Query param: Maximum number of items to return
            #
            # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
            #
            # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Customers::Entities::EntitlementListResponse>]
            #
            # @see Stigg::Models::V1::Customers::Entities::EntitlementListParams
            def list(id, params = {})
              query_params = [:after, :before, :currency_id, :entity_id, :feature_id, :limit]
              parsed, options = Stigg::V1::Customers::Entities::EntitlementListParams.dump_request(params)
              query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :get,
                path: ["api/v1/customers/%1$s/entities/entitlements", id],
                query: query.transform_keys(
                  currency_id: "currencyId",
                  entity_id: "entityId",
                  feature_id: "featureId"
                ),
                headers: parsed.except(*query_params).transform_keys(
                  x_account_id: "x-account-id",
                  x_environment_id: "x-environment-id"
                ),
                page: Stigg::Internal::MyCursorIDPage,
                model: Stigg::Models::V1::Customers::Entities::EntitlementListResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Stigg::Models::V1::Customers::Entities::EntitlementUpsertParams} for more
            # details.
            #
            # Batched create-or-update of entity entitlements. Existing entity entitlements
            # matched by (entityId, featureId or currencyId, scopeEntityIds) are updated; new
            # ones are created. On update, omitted fields (usageLimit, cadence) are preserved;
            # on create both are required.
            #
            # @overload upsert(id, entity_entitlements:, x_account_id: nil, x_environment_id: nil, request_options: {})
            #
            # @param id [String] Path param: The customer identifier (owner) the entity entitlements belong to
            #
            # @param entity_entitlements [Array<Stigg::Models::V1::Customers::Entities::EntitlementUpsertParams::EntityEntitlement>] Body param: Entity entitlements to upsert (1–100 per request)
            #
            # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
            #
            # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Models::V1::Customers::Entities::EntitlementUpsertResponse]
            #
            # @see Stigg::Models::V1::Customers::Entities::EntitlementUpsertParams
            def upsert(id, params)
              parsed, options = Stigg::V1::Customers::Entities::EntitlementUpsertParams.dump_request(params)
              header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
              @client.request(
                method: :put,
                path: ["api/v1/customers/%1$s/entities/entitlements", id],
                headers: parsed.slice(*header_params.keys).transform_keys(header_params),
                body: parsed.except(*header_params.keys),
                model: Stigg::Models::V1::Customers::Entities::EntitlementUpsertResponse,
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
