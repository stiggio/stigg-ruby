# typed: strong

module Stigg
  module Resources
    class V1
      # Operations related to usage & metering
      class Events
        sig { returns(Stigg::Resources::V1::Events::DataExport) }
        attr_reader :data_export

        sig { returns(Stigg::Resources::V1::Events::Beta) }
        attr_reader :beta

        # Reports raw usage events for event-based metering. Events are ingested
        # asynchronously and aggregated into usage totals.
        sig do
          params(
            events: T::Array[Stigg::V1::EventReportParams::Event::OrHash],
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::EventReportResponse)
        end
        def report(
          # Body param: A list of usage events to report
          events:,
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
