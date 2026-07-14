# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      # Operations related to usage & metering
      class Usage
        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::UsageEstimateCostParams} for more details.
        #
        # Estimates the credit cost of a usage report without recording it. Returns the
        # estimated cost per credit currency, the current balance, and the balance after
        # the estimated consumption.
        #
        # @overload estimate_cost(customer_id:, feature_id:, value:, dimensions: nil, resource_id: nil, update_behavior: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param customer_id [String] Body param: Customer id
        #
        # @param feature_id [String] Body param: Feature id
        #
        # @param value [Integer] Body param: The value to report for usage
        #
        # @param dimensions [Hash{Symbol=>String, Float, Boolean}] Body param: Additional dimensions for the usage report
        #
        # @param resource_id [String, nil] Body param: Resource id
        #
        # @param update_behavior [Symbol, Stigg::Models::V1::UsageEstimateCostParams::UpdateBehavior] Body param: The method by which the usage value should be updated
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::UsageEstimateCostResponse]
        #
        # @see Stigg::Models::V1::UsageEstimateCostParams
        def estimate_cost(params)
          parsed, options = Stigg::V1::UsageEstimateCostParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/usage/estimate",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::Models::V1::UsageEstimateCostResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::UsageHistoryParams} for more details.
        #
        # Retrieves historical usage data for a customer's metered feature over time.
        #
        # @overload history(feature_id, customer_id:, start_date:, end_date: nil, group_by: nil, resource_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param feature_id [String] Path param: Feature id
        #
        # @param customer_id [String] Path param: Customer id
        #
        # @param start_date [Time] Query param: The start date of the range
        #
        # @param end_date [Time] Query param: The end date of the range
        #
        # @param group_by [String] Query param: Criteria by which to group the usage history
        #
        # @param resource_id [String, nil] Query param: Resource id
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::UsageHistoryResponse]
        #
        # @see Stigg::Models::V1::UsageHistoryParams
        def history(feature_id, params)
          query_params = [:start_date, :end_date, :group_by, :resource_id]
          parsed, options = Stigg::V1::UsageHistoryParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
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
              resource_id: "resourceId"
            ),
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::Models::V1::UsageHistoryResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::UsageReportParams} for more details.
        #
        # Reports usage measurements for metered features. The reported usage is used to
        # track, limit, and bill customer consumption.
        #
        # @overload report(usages:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param usages [Array<Stigg::Models::V1::UsageReportParams::Usage>] Body param: A list of usage reports to be submitted in bulk
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::UsageReportResponse]
        #
        # @see Stigg::Models::V1::UsageReportParams
        def report(params)
          parsed, options = Stigg::V1::UsageReportParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/usage",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
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
