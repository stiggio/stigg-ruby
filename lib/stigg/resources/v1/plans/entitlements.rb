# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Plans
        class Entitlements
          # Creates one or more entitlements (feature or credit) on a draft plan.
          #
          # @overload create(plan_id, entitlements:, request_options: {})
          #
          # @param plan_id [String] The plan ID
          #
          # @param entitlements [Array<Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Credit>] Entitlements to create
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Plans::EntitlementCreateResponse]
          #
          # @see Stigg::Models::V1::Plans::EntitlementCreateParams
          def create(plan_id, params)
            parsed, options = Stigg::V1::Plans::EntitlementCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v1/plans/%1$s/entitlements", plan_id],
              body: parsed,
              model: Stigg::Models::V1::Plans::EntitlementCreateResponse,
              options: options
            )
          end

          # Updates an existing entitlement on a draft plan.
          #
          # @overload update(id, plan_id:, body:, request_options: {})
          #
          # @param id [String] Path param: The feature ID or custom currency ID of the entitlement
          #
          # @param plan_id [String] Path param: The plan ID
          #
          # @param body [Stigg::Models::V1::Plans::EntitlementUpdateParams::Body::Feature, Stigg::Models::V1::Plans::EntitlementUpdateParams::Body::Credit] Body param: Request to update a plan entitlement
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
              body: parsed[:body],
              model: Stigg::V1::Plans::PlanEntitlement,
              options: options
            )
          end

          # Retrieves a list of entitlements for a plan.
          #
          # @overload list(plan_id, request_options: {})
          #
          # @param plan_id [String] The plan ID
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Plans::EntitlementListResponse]
          #
          # @see Stigg::Models::V1::Plans::EntitlementListParams
          def list(plan_id, params = {})
            @client.request(
              method: :get,
              path: ["api/v1/plans/%1$s/entitlements", plan_id],
              model: Stigg::Models::V1::Plans::EntitlementListResponse,
              options: params[:request_options]
            )
          end

          # Deletes an entitlement from a draft plan.
          #
          # @overload delete(id, plan_id:, request_options: {})
          #
          # @param id [String] The feature ID or custom currency ID of the entitlement
          #
          # @param plan_id [String] The plan ID
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
