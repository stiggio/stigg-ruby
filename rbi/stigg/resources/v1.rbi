# typed: strong

module Stigg
  module Resources
    class V1
      sig { returns(Stigg::Resources::V1::Customers) }
      attr_reader :customers

      sig { returns(Stigg::Resources::V1::Permissions) }
      attr_reader :permissions

      # @api private
      sig { params(client: Stigg::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
