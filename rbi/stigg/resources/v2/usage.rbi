# typed: strong

module Stigg
  module Resources
    class V2
      # Operations related to usage & metering
      class Usage
        # Reports usage measurements for metered features. The reported usage is used to
        # track, limit, and bill customer consumption. Credit balances are returned once
        # per wallet in `credits`, not on each measurement.
        sig do
          params(
            usages: T::Array[Stigg::V2::UsageReportParams::Usage::OrHash],
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V2::UsageReportResponse)
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
