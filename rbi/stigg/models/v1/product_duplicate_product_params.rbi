# typed: strong

module Stigg
  module Models
    module V1
      class ProductDuplicateProductParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::ProductDuplicateProductParams,
              Stigg::Internal::AnyHash
            )
          end

        # The unique identifier for the entity
        sig { returns(String) }
        attr_accessor :body_id

        # Description of the product
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Display name of the product
        sig { returns(T.nilable(String)) }
        attr_reader :display_name

        sig { params(display_name: String).void }
        attr_writer :display_name

        sig do
          params(
            body_id: String,
            description: T.nilable(String),
            display_name: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the entity
          body_id:,
          # Description of the product
          description: nil,
          # Display name of the product
          display_name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              body_id: String,
              description: T.nilable(String),
              display_name: String,
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
