# typed: strong

module Stigg
  module Resources
    class V1Beta
      sig { returns(Stigg::Resources::V1Beta::Customers) }
      attr_reader :customers

      sig { returns(Stigg::Resources::V1Beta::EntityTypes) }
      attr_reader :entity_types

      # @api private
      sig { params(client: Stigg::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
