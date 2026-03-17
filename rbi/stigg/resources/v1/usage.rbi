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
            include_inactive_subscriptions: T::Boolean,
            resource_id: T.nilable(String),
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
          # Query param: When true, includes usage data from the most recent cancelled or
          # expired subscription
          include_inactive_subscriptions: nil,
          # Query param: Resource id
          resource_id: nil,
          request_options: {}
        )
        end

        # Reports usage measurements for metered features. The reported usage is used to
        # track, limit, and bill customer consumption.
        sig do
          params(
            usages: T::Array[Stigg::V1::UsageReportParams::Usage::OrHash],
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::UsageReportResponse)
        end
        def report(
          # A list of usage reports to be submitted in bulk
          usages:,
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
