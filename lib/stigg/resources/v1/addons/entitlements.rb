# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Addons
        class Entitlements
          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Addons::EntitlementCreateParams} for more details.
          #
          # Creates one or more entitlements (feature or credit) on a draft addon.
          #
          # @overload create(addon_id, entitlements:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param addon_id [String] Path param: The addon ID
          #
          # @param entitlements [Array<Stigg::Models::V1::Addons::EntitlementCreateParams::Entitlement::Feature, Stigg::Models::V1::Addons::EntitlementCreateParams::Entitlement::Credit>] Body param: Entitlements to create
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Addons::EntitlementCreateResponse]
          #
          # @see Stigg::Models::V1::Addons::EntitlementCreateParams
          def create(addon_id, params)
            parsed, options = Stigg::V1::Addons::EntitlementCreateParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :post,
              path: ["api/v1/addons/%1$s/entitlements", addon_id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Stigg::Models::V1::Addons::EntitlementCreateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Addons::EntitlementUpdateParams} for more details.
          #
          # Updates an existing entitlement on a draft addon.
          #
          # @overload update(id, addon_id:, body:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Path param: The feature ID or custom currency ID of the entitlement
          #
          # @param addon_id [String] Path param: The addon ID
          #
          # @param body [Stigg::Models::V1::Addons::EntitlementUpdateParams::Body::Feature, Stigg::Models::V1::Addons::EntitlementUpdateParams::Body::Credit] Body param: Request to update an addon entitlement
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
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
              headers: parsed.except(:body).transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              body: parsed[:body],
              model: Stigg::V1::Addons::AddonPackageEntitlement,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Addons::EntitlementListParams} for more details.
          #
          # Retrieves a list of entitlements for an addon.
          #
          # @overload list(addon_id, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param addon_id [String] The addon ID
          #
          # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
          #
          # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Addons::EntitlementListResponse]
          #
          # @see Stigg::Models::V1::Addons::EntitlementListParams
          def list(addon_id, params = {})
            parsed, options = Stigg::V1::Addons::EntitlementListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["api/v1/addons/%1$s/entitlements", addon_id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::Models::V1::Addons::EntitlementListResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Addons::EntitlementDeleteParams} for more details.
          #
          # Deletes an entitlement from a draft addon.
          #
          # @overload delete(id, addon_id:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Path param: The feature ID or custom currency ID of the entitlement
          #
          # @param addon_id [String] Path param: The addon ID
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
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
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
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
