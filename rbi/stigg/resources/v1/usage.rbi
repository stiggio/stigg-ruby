# typed: strong

module Stigg
  module Resources
    class V1
      class Usage
        # Get usage history
        sig do
          params(
            feature_id: String,
            customer_id: String,
            start_date: Time,
            end_date: Time,
            group_by: String,
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
          # Query param
          group_by: nil,
          # Query param: Resource id
          resource_id: nil,
          request_options: {}
        )
        end

        # Report usage measurements
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
