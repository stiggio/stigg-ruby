# typed: strong

module Stigg
  module Resources
    class V1
      sig { returns(Stigg::Resources::V1::Customers) }
      attr_reader :customers

      sig { returns(Stigg::Resources::V1::Subscriptions) }
      attr_reader :subscriptions

      # Operations related to coupons
      sig { returns(Stigg::Resources::V1::Coupons) }
      attr_reader :coupons

      # Operations related to usage & metering
      sig { returns(Stigg::Resources::V1::Events) }
      attr_reader :events

      # Operations related to features
      sig { returns(Stigg::Resources::V1::Features) }
      attr_reader :features

      # Operations related to addons
      sig { returns(Stigg::Resources::V1::Addons) }
      attr_reader :addons

      # Operations related to plans
      sig { returns(Stigg::Resources::V1::Plans) }
      attr_reader :plans

      # Operations related to usage & metering
      sig { returns(Stigg::Resources::V1::Usage) }
      attr_reader :usage

      # Operations related to products
      sig { returns(Stigg::Resources::V1::Products) }
      attr_reader :products

      # @api private
      sig { params(client: Stigg::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
