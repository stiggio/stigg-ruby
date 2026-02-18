# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class AddonUpdateAddonParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Events::AddonUpdateAddonParams,
                Stigg::Internal::AnyHash
              )
            end

          # The unique identifier for the entity in the billing provider
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_id

          # List of addons the addon is dependant on
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :dependencies

          # The description of the package
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # The display name of the package
          sig { returns(T.nilable(String)) }
          attr_reader :display_name

          sig { params(display_name: String).void }
          attr_writer :display_name

          # The maximum quantity of this addon that can be added to a subscription
          sig { returns(T.nilable(Integer)) }
          attr_accessor :max_quantity

          # Metadata associated with the entity
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          sig do
            params(
              billing_id: T.nilable(String),
              dependencies: T.nilable(T::Array[String]),
              description: T.nilable(String),
              display_name: String,
              max_quantity: T.nilable(Integer),
              metadata: T::Hash[Symbol, String],
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the entity in the billing provider
            billing_id: nil,
            # List of addons the addon is dependant on
            dependencies: nil,
            # The description of the package
            description: nil,
            # The display name of the package
            display_name: nil,
            # The maximum quantity of this addon that can be added to a subscription
            max_quantity: nil,
            # Metadata associated with the entity
            metadata: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                billing_id: T.nilable(String),
                dependencies: T.nilable(T::Array[String]),
                description: T.nilable(String),
                display_name: String,
                max_quantity: T.nilable(Integer),
                metadata: T::Hash[Symbol, String],
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
end
