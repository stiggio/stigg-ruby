# typed: strong

module Stigg
  module Models
    module V1Beta
      class EntityUnarchiveParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1Beta::EntityUnarchiveParams,
              Stigg::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Entity identifiers to act on
        sig { returns(T::Array[String]) }
        attr_accessor :ids

        sig do
          params(
            id: String,
            ids: T::Array[String],
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Entity identifiers to act on
          ids:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              ids: T::Array[String],
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
