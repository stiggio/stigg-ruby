# typed: strong

module Stigg
  module Resources
    class V1
      # Operations related to usage & metering
      class Usage
        # Estimates the credit cost of a usage report without recording it. Returns the
        # estimated cost per credit currency, the current balance, and the balance after
        # the estimated consumption.
        sig do
          params(
            customer_id: String,
            feature_id: String,
            value: Integer,
            dimensions:
              T::Hash[
                Symbol,
                Stigg::V1::UsageEstimateParams::Dimension::Variants
              ],
            resource_id: T.nilable(String),
            update_behavior:
              Stigg::V1::UsageEstimateParams::UpdateBehavior::OrSymbol,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::UsageEstimateResponse)
        end
        def estimate(
          # Body param: Customer id
          customer_id:,
          # Body param: Feature id
          feature_id:,
          # Body param: The value to report for usage. Must be a whole number — the REST API
          # does not accept fractional (float) usage values; scale up (e.g. report cents
          # instead of dollars, or milliseconds instead of seconds) if you need sub-unit
          # precision.
          value:,
          # Body param: Additional dimensions for the usage report
          dimensions: nil,
          # Body param: The customer resource this usage applies to. Optional — only
          # required if the customer has multiple resources (for example, one subscription
          # per workspace or site) and usage needs to be tracked separately per resource;
          # omit it to report usage at the customer level.
          resource_id: nil,
          # Body param: How the reported value is applied: DELTA (default) adds it to the
          # feature's current usage; SET treats it as the new absolute usage total, and
          # Stigg computes the delta internally.
          update_behavior: nil,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Retrieves historical usage data for a customer's metered feature over time.
        sig do
          params(
            feature_id: String,
            customer_id: String,
            start_date: Time,
            end_date: Time,
            group_by: String,
            resource_id: T.nilable(String),
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::UsageHistoryResponse)
        end
        def history(
          # Path param: Feature id
          feature_id,
          # Path param: Customer id
          customer_id:,
          # Query param: The start date of the range
          start_date:,
          # Query param: The end date of the range
          end_date: nil,
          # Query param: Criteria by which to group the usage history
          group_by: nil,
          # Query param: The customer resource this usage applies to. Optional — only
          # required if the customer has multiple resources (for example, one subscription
          # per workspace or site) and usage needs to be tracked separately per resource;
          # omit it to report usage at the customer level.
          resource_id: nil,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Reports usage measurements for metered features. The reported usage is used to
        # track, limit, and bill customer consumption.
        sig do
          params(
            usages: T::Array[Stigg::V1::UsageReportParams::Usage::OrHash],
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::UsageReportResponse)
        end
        def report(
          # Body param: A list of usage reports to be submitted in bulk
          usages:,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
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
