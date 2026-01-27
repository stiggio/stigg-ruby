# typed: strong

module Stigg
  module Internal
    class MyCursorIDPage
      include Stigg::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(Pagination) }
      attr_accessor :pagination

      # @api private
      sig { returns(String) }
      def inspect
      end

      class Pagination < Stigg::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(Pagination, Stigg::Internal::AnyHash) }

        sig { returns(T.nilable(String)) }
        attr_reader :next_

        sig { params(next_: String).void }
        attr_writer :next_

        sig { returns(T.nilable(String)) }
        attr_reader :prev

        sig { params(prev: String).void }
        attr_writer :prev

        sig { params(next_: String, prev: String).returns(T.attached_class) }
        def self.new(next_: nil, prev: nil)
        end

        sig { override.returns({ next_: String, prev: String }) }
        def to_hash
        end
      end
    end
  end
end
