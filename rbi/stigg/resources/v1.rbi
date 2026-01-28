# typed: strong

module Stigg
  module Resources
    class V1
      sig { returns(Stigg::Resources::V1::Customers) }
      attr_reader :customers

      sig { returns(Stigg::Resources::V1::Subscriptions) }
      attr_reader :subscriptions

      sig { returns(Stigg::Resources::V1::Coupons) }
      attr_reader :coupons

      # Report usage events
      sig do
        params(
          events: T::Array[Stigg::V1CreateEventParams::Event::OrHash],
          request_options: Stigg::RequestOptions::OrHash
        ).returns(Stigg::Models::V1CreateEventResponse)
      end
      def create_event(
        # A list of usage events to report
        events:,
        request_options: {}
      )
      end

      # Report usage measurements
      sig do
        params(
          usages: T::Array[Stigg::V1CreateUsageParams::Usage::OrHash],
          request_options: Stigg::RequestOptions::OrHash
        ).returns(Stigg::Models::V1CreateUsageResponse)
      end
      def create_usage(
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
