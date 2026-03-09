# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Addons
        class Entitlements
          # Creates one or more entitlements (feature or credit) on a draft addon.
          #
          # @overload create(addon_id, entitlements:, request_options: {})
          #
          # @param addon_id [String] The addon ID
          #
          # @param entitlements [Array<Stigg::Models::V1::Addons::EntitlementCreateParams::Entitlement::Feature, Stigg::Models::V1::Addons::EntitlementCreateParams::Entitlement::Credit>] Entitlements to create
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Addons::EntitlementCreateResponse]
          #
          # @see Stigg::Models::V1::Addons::EntitlementCreateParams
          def create(addon_id, params)
            parsed, options = Stigg::V1::Addons::EntitlementCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v1/addons/%1$s/entitlements", addon_id],
              body: parsed,
              model: Stigg::Models::V1::Addons::EntitlementCreateResponse,
              options: options
            )
          end

          # Updates an existing entitlement on a draft addon.
          #
          # @overload update(id, addon_id:, body:, request_options: {})
          #
          # @param id [String] Path param: The feature ID or custom currency ID of the entitlement
          #
          # @param addon_id [String] Path param: The addon ID
          #
          # @param body [Stigg::Models::V1::Addons::EntitlementUpdateParams::Body::Feature, Stigg::Models::V1::Addons::EntitlementUpdateParams::Body::Credit] Body param: Request to update an addon entitlement
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Addons::AddonPackageEntitlement]
          #
          # @see Stigg::Models::V1::Addons::EntitlementUpdateParams
          def update(id, params)
            parsed, options = Stigg::V1::Addons::EntitlementUpdateParams.dump_request(params)
            addon_id =
              parsed.delete(:addon_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["api/v1/addons/%1$s/entitlements/%2$s", addon_id, id],
              body: parsed[:body],
              model: Stigg::V1::Addons::AddonPackageEntitlement,
              options: options
            )
          end

          # Retrieves a list of entitlements for an addon.
          #
          # @overload list(addon_id, request_options: {})
          #
          # @param addon_id [String] The addon ID
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Addons::EntitlementListResponse]
          #
          # @see Stigg::Models::V1::Addons::EntitlementListParams
          def list(addon_id, params = {})
            @client.request(
              method: :get,
              path: ["api/v1/addons/%1$s/entitlements", addon_id],
              model: Stigg::Models::V1::Addons::EntitlementListResponse,
              options: params[:request_options]
            )
          end

          # Deletes an entitlement from a draft addon.
          #
          # @overload delete(id, addon_id:, request_options: {})
          #
          # @param id [String] The feature ID or custom currency ID of the entitlement
          #
          # @param addon_id [String] The addon ID
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Addons::AddonPackageEntitlement]
          #
          # @see Stigg::Models::V1::Addons::EntitlementDeleteParams
          def delete(id, params)
            parsed, options = Stigg::V1::Addons::EntitlementDeleteParams.dump_request(params)
            addon_id =
              parsed.delete(:addon_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["api/v1/addons/%1$s/entitlements/%2$s", addon_id, id],
              model: Stigg::V1::Addons::AddonPackageEntitlement,
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
