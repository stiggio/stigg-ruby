# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Plans
        class Entitlements
          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Plans::EntitlementCreateParams} for more details.
          #
          # Creates one or more entitlements (feature or credit) on a draft plan.
          #
          # @overload create(plan_id, entitlements:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param plan_id [String] Path param: The plan ID
          #
          # @param entitlements [Array<Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Credit>] Body param: Entitlements to create
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Plans::EntitlementCreateResponse]
          #
          # @see Stigg::Models::V1::Plans::EntitlementCreateParams
          def create(plan_id, params)
            parsed, options = Stigg::V1::Plans::EntitlementCreateParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :post,
              path: ["api/v1/plans/%1$s/entitlements", plan_id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Stigg::Models::V1::Plans::EntitlementCreateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Plans::EntitlementUpdateParams} for more details.
          #
          # Updates an existing entitlement on a draft plan.
          #
          # @overload update(id, plan_id:, body:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Path param: The feature ID or custom currency ID of the entitlement
          #
          # @param plan_id [String] Path param: The plan ID
          #
          # @param body [Stigg::Models::V1::Plans::EntitlementUpdateParams::Body::Feature, Stigg::Models::V1::Plans::EntitlementUpdateParams::Body::Credit] Body param: Request to update a plan entitlement
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Plans::PlanEntitlement]
          #
          # @see Stigg::Models::V1::Plans::EntitlementUpdateParams
          def update(id, params)
            parsed, options = Stigg::V1::Plans::EntitlementUpdateParams.dump_request(params)
            plan_id =
              parsed.delete(:plan_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["api/v1/plans/%1$s/entitlements/%2$s", plan_id, id],
              headers: parsed.except(:body).transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              body: parsed[:body],
              model: Stigg::V1::Plans::PlanEntitlement,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Plans::EntitlementListParams} for more details.
          #
          # Retrieves a list of entitlements for a plan.
          #
          # @overload list(plan_id, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param plan_id [String] The plan ID
          #
          # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
          #
          # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Plans::EntitlementListResponse]
          #
          # @see Stigg::Models::V1::Plans::EntitlementListParams
          def list(plan_id, params = {})
            parsed, options = Stigg::V1::Plans::EntitlementListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["api/v1/plans/%1$s/entitlements", plan_id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::Models::V1::Plans::EntitlementListResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Plans::EntitlementDeleteParams} for more details.
          #
          # Deletes an entitlement from a draft plan.
          #
          # @overload delete(id, plan_id:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Path param: The feature ID or custom currency ID of the entitlement
          #
          # @param plan_id [String] Path param: The plan ID
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Plans::PlanEntitlement]
          #
          # @see Stigg::Models::V1::Plans::EntitlementDeleteParams
          def delete(id, params)
            parsed, options = Stigg::V1::Plans::EntitlementDeleteParams.dump_request(params)
            plan_id =
              parsed.delete(:plan_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["api/v1/plans/%1$s/entitlements/%2$s", plan_id, id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::V1::Plans::PlanEntitlement,
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
