# frozen_string_literal: true

module Stigg
  module Resources
    class V2
      # Operations related to usage & metering
      class Usage
        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V2::UsageReportParams} for more details.
        #
        # Reports usage measurements for metered features. The reported usage is used to
        # track, limit, and bill customer consumption. Credit balances are returned once
        # per wallet in `credits`, not on each measurement.
        #
        # @overload report(usages:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param usages [Array<Stigg::Models::V2::UsageReportParams::Usage>] Body param: A list of usage reports to be submitted in bulk
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V2::UsageReportResponse]
        #
        # @see Stigg::Models::V2::UsageReportParams
        def report(params)
          parsed, options = Stigg::V2::UsageReportParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v2/usage",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::Models::V2::UsageReportResponse,
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
