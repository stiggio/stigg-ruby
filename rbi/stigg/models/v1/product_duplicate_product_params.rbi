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

        sig { returns(String) }
        attr_accessor :id

        # The unique identifier for the entity
        sig { returns(String) }
        attr_accessor :target_id

        # Description of the product
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Display name of the product
        sig { returns(T.nilable(String)) }
        attr_reader :display_name

        sig { params(display_name: String).void }
        attr_writer :display_name

        sig { returns(T.nilable(String)) }
        attr_reader :x_account_id

        sig { params(x_account_id: String).void }
        attr_writer :x_account_id

        sig { returns(T.nilable(String)) }
        attr_reader :x_environment_id

        sig { params(x_environment_id: String).void }
        attr_writer :x_environment_id

        sig do
          params(
            id: String,
            target_id: String,
            description: T.nilable(String),
            display_name: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # The unique identifier for the entity
          target_id:,
          # Description of the product
          description: nil,
          # Display name of the product
          display_name: nil,
          x_account_id: nil,
          x_environment_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              target_id: String,
              description: T.nilable(String),
              display_name: String,
              x_account_id: String,
              x_environment_id: String,
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
