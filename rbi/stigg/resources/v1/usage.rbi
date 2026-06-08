# typed: strong

module Stigg
  module Resources
    class V1
      # Operations related to usage & metering
      class Usage
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
          # Query param: Resource id
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
