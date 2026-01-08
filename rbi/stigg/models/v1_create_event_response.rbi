# typed: strong

module Stigg
  module Models
    class V1CreateEventResponse < Stigg::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Stigg::Models::V1CreateEventResponse, Stigg::Internal::AnyHash)
        end

      sig { returns(T.anything) }
      attr_accessor :data

      sig { params(data: T.anything).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({ data: T.anything }) }
      def to_hash
      end
    end
  end
end
