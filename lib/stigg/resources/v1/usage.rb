# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      # Operations related to usage & metering
      class Usage
        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::UsageHistoryParams} for more details.
        #
        # Retrieves historical usage data for a customer's metered feature over time.
        #
        # @overload history(feature_id, customer_id:, start_date:, end_date: nil, group_by: nil, include_inactive_subscriptions: nil, resource_id: nil, request_options: {})
        #
        # @param feature_id [String] Path param: Feature id
        #
        # @param customer_id [String] Path param: Customer id
        #
        # @param start_date [Time] Query param: The start date of the range
        #
        # @param end_date [Time] Query param: The end date of the range
        #
        # @param group_by [String] Query param
        #
        # @param include_inactive_subscriptions [Boolean] Query param: When true, includes usage data from the most recent cancelled or ex
        #
        # @param resource_id [String, nil] Query param: Resource id
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::UsageHistoryResponse]
        #
        # @see Stigg::Models::V1::UsageHistoryParams
        def history(feature_id, params)
          parsed, options = Stigg::V1::UsageHistoryParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed)
          customer_id =
            parsed.delete(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/v1/usage/%1$s/history/%2$s", customer_id, feature_id],
            query: query.transform_keys(
              start_date: "startDate",
              end_date: "endDate",
              group_by: "groupBy",
              include_inactive_subscriptions: "includeInactiveSubscriptions",
              resource_id: "resourceId"
            ),
            model: Stigg::Models::V1::UsageHistoryResponse,
            options: options
          )
        end

        # Reports usage measurements for metered features. The reported usage is used to
        # track, limit, and bill customer consumption.
        #
        # @overload report(usages:, request_options: {})
        #
        # @param usages [Array<Stigg::Models::V1::UsageReportParams::Usage>] A list of usage reports to be submitted in bulk
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::UsageReportResponse]
        #
        # @see Stigg::Models::V1::UsageReportParams
        def report(params)
          parsed, options = Stigg::V1::UsageReportParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/usage",
            body: parsed,
            model: Stigg::Models::V1::UsageReportResponse,
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
