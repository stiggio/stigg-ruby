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

      sig { returns(Stigg::Resources::V1::Events) }
      attr_reader :events

      sig { returns(Stigg::Resources::V1::Usage) }
      attr_reader :usage

      sig { returns(Stigg::Resources::V1::Products) }
      attr_reader :products

      # @api private
      sig { params(client: Stigg::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
