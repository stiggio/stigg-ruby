# typed: strong

module Stigg
  module Models
    module V2
      class PermissionCheckResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V2::PermissionCheckResponse,
              Stigg::Internal::AnyHash
            )
          end

        # List of booleans indicating whether the user has access to each resource and
        # action correspondingly
        sig { returns(T::Array[T::Boolean]) }
        attr_accessor :permitted_list

        # Response for checking permissions
        sig do
          params(permitted_list: T::Array[T::Boolean]).returns(T.attached_class)
        end
        def self.new(
          # List of booleans indicating whether the user has access to each resource and
          # action correspondingly
          permitted_list:
        )
        end

        sig { override.returns({ permitted_list: T::Array[T::Boolean] }) }
        def to_hash
        end
      end
    end
  end
end
