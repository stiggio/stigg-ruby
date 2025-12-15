# typed: strong

module Stigg
  module Internal
    class MyCursorIDPage
      include Stigg::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      # @api private
      sig { returns(String) }
      def inspect
      end
    end
  end
end
