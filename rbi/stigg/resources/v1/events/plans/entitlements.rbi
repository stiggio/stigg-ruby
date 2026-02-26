# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class Plans
          class Entitlements
            # Creates one or more entitlements (feature or credit) on a draft plan.
            sig do
              params(
                plan_id: String,
                entitlements:
                  T::Array[
                    Stigg::V1::Events::Plans::EntitlementCreateParams::Entitlement::OrHash
                  ],
                request_options: Stigg::RequestOptions::OrHash
              ).returns(
                Stigg::Models::V1::Events::Plans::EntitlementCreateResponse
              )
            end
            def create(
              # The plan ID
              plan_id,
              # Entitlements to create
              entitlements:,
              request_options: {}
            )
            end

            # Updates an existing entitlement on a draft plan.
            sig do
              params(
                id: String,
                plan_id: String,
                credit:
                  Stigg::V1::Events::Plans::EntitlementUpdateParams::Credit::OrHash,
                feature:
                  Stigg::V1::Events::Plans::EntitlementUpdateParams::Feature::OrHash,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(Stigg::V1::Events::Plans::PlanEntitlement)
            end
            def update(
              # Path param: The feature ID or custom currency ID of the entitlement
              id,
              # Path param: The plan ID
              plan_id:,
              # Body param: Credit entitlement fields to update
              credit: nil,
              # Body param: Feature entitlement fields to update
              feature: nil,
              request_options: {}
            )
            end

            # Retrieves a list of entitlements for a plan.
            sig do
              params(
                plan_id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(
                Stigg::Models::V1::Events::Plans::EntitlementListResponse
              )
            end
            def list(
              # The plan ID
              plan_id,
              request_options: {}
            )
            end

            # Deletes an entitlement from a draft plan.
            sig do
              params(
                id: String,
                plan_id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(Stigg::V1::Events::Plans::PlanEntitlement)
            end
            def delete(
              # The feature ID or custom currency ID of the entitlement
              id,
              # The plan ID
              plan_id:,
              request_options: {}
            )
            end

            # @api private
            sig { params(client: Stigg::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
