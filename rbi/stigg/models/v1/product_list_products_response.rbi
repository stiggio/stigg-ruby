# typed: strong

module Stigg
  module Models
    module V1
      class ProductListProductsResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::ProductListProductsResponse,
              Stigg::Internal::AnyHash
            )
          end

        # The unique identifier for the entity
        sig { returns(String) }
        attr_accessor :id

        # Timestamp of when the record was created
        sig { returns(Time) }
        attr_accessor :created_at

        # Description of the product
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Display name of the product
        sig { returns(String) }
        attr_accessor :display_name

        # Metadata associated with the entity
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        # Indicates if multiple subscriptions to this product are allowed
        sig { returns(T::Boolean) }
        attr_accessor :multiple_subscriptions

        # The status of the product
        sig do
          returns(
            Stigg::Models::V1::ProductListProductsResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Timestamp of when the record was last updated
        sig { returns(Time) }
        attr_accessor :updated_at

        # Product configuration object
        sig do
          params(
            id: String,
            created_at: Time,
            description: T.nilable(String),
            display_name: String,
            metadata: T::Hash[Symbol, String],
            multiple_subscriptions: T::Boolean,
            status:
              Stigg::Models::V1::ProductListProductsResponse::Status::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the entity
          id:,
          # Timestamp of when the record was created
          created_at:,
          # Description of the product
          description:,
          # Display name of the product
          display_name:,
          # Metadata associated with the entity
          metadata:,
          # Indicates if multiple subscriptions to this product are allowed
          multiple_subscriptions:,
          # The status of the product
          status:,
          # Timestamp of when the record was last updated
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              description: T.nilable(String),
              display_name: String,
              metadata: T::Hash[Symbol, String],
              multiple_subscriptions: T::Boolean,
              status:
                Stigg::Models::V1::ProductListProductsResponse::Status::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # The status of the product
        module Status
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::Models::V1::ProductListProductsResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUBLISHED =
            T.let(
              :PUBLISHED,
              Stigg::Models::V1::ProductListProductsResponse::Status::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :ARCHIVED,
              Stigg::Models::V1::ProductListProductsResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::Models::V1::ProductListProductsResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
