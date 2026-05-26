# typed: strong

module Stigg
  module Models
    module V1Beta
      module Customers
        class EntityIDsRequestDto < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1Beta::Customers::EntityIDsRequestDto,
                Stigg::Internal::AnyHash
              )
            end

          # Entity identifiers to act on
          sig { returns(T::Array[String]) }
          attr_accessor :ids

          # List of entity identifiers to act on in bulk (1-100 entries)
          sig { params(ids: T::Array[String]).returns(T.attached_class) }
          def self.new(
            # Entity identifiers to act on
            ids:
          )
          end

          sig { override.returns({ ids: T::Array[String] }) }
          def to_hash
          end
        end
      end
    end
  end
end
