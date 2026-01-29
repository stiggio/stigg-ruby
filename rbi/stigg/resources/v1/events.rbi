# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        # Report usage events
        sig do
          params(
            events: T::Array[Stigg::V1::EventReportParams::Event::OrHash],
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::EventReportResponse)
        end
        def report(
          # A list of usage events to report
          events:,
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
