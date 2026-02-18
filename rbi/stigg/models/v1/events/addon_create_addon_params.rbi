# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class AddonCreateAddonParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Events::AddonCreateAddonParams,
                Stigg::Internal::AnyHash
              )
            end

          # The unique identifier for the entity
          sig { returns(String) }
          attr_accessor :id

          # The display name of the package
          sig { returns(String) }
          attr_accessor :display_name

          # The product id of the package
          sig { returns(String) }
          attr_accessor :product_id

          # The unique identifier for the entity in the billing provider
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_id

          # The description of the package
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # The maximum quantity of this addon that can be added to a subscription
          sig { returns(T.nilable(Integer)) }
          attr_accessor :max_quantity

          # Metadata associated with the entity
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          # The pricing type of the package
          sig do
            returns(
              T.nilable(
                Stigg::V1::Events::AddonCreateAddonParams::PricingType::OrSymbol
              )
            )
          end
          attr_accessor :pricing_type

          # The status of the package
          sig do
            returns(
              T.nilable(
                Stigg::V1::Events::AddonCreateAddonParams::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Stigg::V1::Events::AddonCreateAddonParams::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              id: String,
              display_name: String,
              product_id: String,
              billing_id: T.nilable(String),
              description: T.nilable(String),
              max_quantity: T.nilable(Integer),
              metadata: T::Hash[Symbol, String],
              pricing_type:
                T.nilable(
                  Stigg::V1::Events::AddonCreateAddonParams::PricingType::OrSymbol
                ),
              status:
                Stigg::V1::Events::AddonCreateAddonParams::Status::OrSymbol,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the entity
            id:,
            # The display name of the package
            display_name:,
            # The product id of the package
            product_id:,
            # The unique identifier for the entity in the billing provider
            billing_id: nil,
            # The description of the package
            description: nil,
            # The maximum quantity of this addon that can be added to a subscription
            max_quantity: nil,
            # Metadata associated with the entity
            metadata: nil,
            # The pricing type of the package
            pricing_type: nil,
            # The status of the package
            status: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                display_name: String,
                product_id: String,
                billing_id: T.nilable(String),
                description: T.nilable(String),
                max_quantity: T.nilable(Integer),
                metadata: T::Hash[Symbol, String],
                pricing_type:
                  T.nilable(
                    Stigg::V1::Events::AddonCreateAddonParams::PricingType::OrSymbol
                  ),
                status:
                  Stigg::V1::Events::AddonCreateAddonParams::Status::OrSymbol,
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end

          # The pricing type of the package
          module PricingType
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::Events::AddonCreateAddonParams::PricingType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FREE =
              T.let(
                :FREE,
                Stigg::V1::Events::AddonCreateAddonParams::PricingType::TaggedSymbol
              )
            PAID =
              T.let(
                :PAID,
                Stigg::V1::Events::AddonCreateAddonParams::PricingType::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :CUSTOM,
                Stigg::V1::Events::AddonCreateAddonParams::PricingType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Events::AddonCreateAddonParams::PricingType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The status of the package
          module Status
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Stigg::V1::Events::AddonCreateAddonParams::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DRAFT =
              T.let(
                :DRAFT,
                Stigg::V1::Events::AddonCreateAddonParams::Status::TaggedSymbol
              )
            PUBLISHED =
              T.let(
                :PUBLISHED,
                Stigg::V1::Events::AddonCreateAddonParams::Status::TaggedSymbol
              )
            ARCHIVED =
              T.let(
                :ARCHIVED,
                Stigg::V1::Events::AddonCreateAddonParams::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Events::AddonCreateAddonParams::Status::TaggedSymbol
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
end
