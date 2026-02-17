# typed: strong

module Stigg
  module Models
    module V1
      class ProductCreateProductParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::ProductCreateProductParams,
              Stigg::Internal::AnyHash
            )
          end

        # The unique identifier for the entity
        sig { returns(String) }
        attr_accessor :id

        # Description of the product
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Display name of the product
        sig { returns(T.nilable(String)) }
        attr_reader :display_name

        sig { params(display_name: String).void }
        attr_writer :display_name

        # Additional metadata for the product
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :metadata

        # Indicates if multiple subscriptions to this product are allowed
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :multiple_subscriptions

        sig { params(multiple_subscriptions: T::Boolean).void }
        attr_writer :multiple_subscriptions

        sig do
          params(
            id: String,
            description: T.nilable(String),
            display_name: String,
            metadata: T.nilable(T::Hash[Symbol, String]),
            multiple_subscriptions: T::Boolean,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the entity
          id:,
          # Description of the product
          description: nil,
          # Display name of the product
          display_name: nil,
          # Additional metadata for the product
          metadata: nil,
          # Indicates if multiple subscriptions to this product are allowed
          multiple_subscriptions: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              description: T.nilable(String),
              display_name: String,
              metadata: T.nilable(T::Hash[Symbol, String]),
              multiple_subscriptions: T::Boolean,
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
