# typed: strong

module Stigg
  module Resources
    class Internal
      sig { returns(Stigg::Resources::Internal::Beta) }
      attr_reader :beta

      # @api private
      sig { params(client: Stigg::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
