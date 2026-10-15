# typed: strong

module Stigg
  module Resources
    class V2
      # Operations related to usage & metering
      sig { returns(Stigg::Resources::V2::Usage) }
      attr_reader :usage

      # @api private
      sig { params(client: Stigg::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
