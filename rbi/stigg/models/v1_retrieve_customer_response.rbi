# typed: strong

module Stigg
  module Models
    class V1RetrieveCustomerResponse < Stigg::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Stigg::Models::V1RetrieveCustomerResponse,
            Stigg::Internal::AnyHash
          )
        end

      # Unique identifier for the entity
      sig { returns(String) }
      attr_accessor :id

      # The email of the customer
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # The name of the customer
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          id: String,
          email: T.nilable(String),
          name: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the entity
        id:,
        # The email of the customer
        email:,
        # The name of the customer
        name:
      )
      end

      sig do
        override.returns(
          { id: String, email: T.nilable(String), name: T.nilable(String) }
        )
      end
      def to_hash
      end
    end
  end
end
