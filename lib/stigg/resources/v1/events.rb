# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        # Report usage events
        #
        # @overload report(events:, request_options: {})
        #
        # @param events [Array<Stigg::Models::V1::EventReportParams::Event>] A list of usage events to report
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::EventReportResponse]
        #
        # @see Stigg::Models::V1::EventReportParams
        def report(params)
          parsed, options = Stigg::V1::EventReportParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/events",
            body: parsed,
            model: Stigg::Models::V1::EventReportResponse,
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
