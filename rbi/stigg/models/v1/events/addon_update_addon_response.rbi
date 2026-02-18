# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class AddonUpdateAddonResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Events::AddonUpdateAddonResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Addon configuration object
          sig do
            returns(Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data)
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Addon configuration object
            data:
          )
          end

          sig do
            override.returns(
              {
                data: Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # The unique identifier for the entity
            sig { returns(String) }
            attr_accessor :id

            # The unique identifier for the entity in the billing provider
            sig { returns(T.nilable(String)) }
            attr_accessor :billing_id

            # Timestamp of when the record was created
            sig { returns(Time) }
            attr_accessor :created_at

            # List of addons the addon is dependant on
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :dependencies

            # The description of the package
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The display name of the package
            sig { returns(String) }
            attr_accessor :display_name

            # List of entitlements of the package
            sig do
              returns(
                T::Array[
                  Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Entitlement
                ]
              )
            end
            attr_accessor :entitlements

            # Indicates if the package is the latest version
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :is_latest

            # The maximum quantity of this addon that can be added to a subscription
            sig { returns(T.nilable(Integer)) }
            attr_accessor :max_quantity

            # Metadata associated with the entity
            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            # The pricing type of the package
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::PricingType::TaggedSymbol
                )
              )
            end
            attr_accessor :pricing_type

            # The product id of the package
            sig { returns(String) }
            attr_accessor :product_id

            # The status of the package
            sig do
              returns(
                Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Timestamp of when the record was last updated
            sig { returns(Time) }
            attr_accessor :updated_at

            # The version number of the package
            sig { returns(Integer) }
            attr_accessor :version_number

            # Addon configuration object
            sig do
              params(
                id: String,
                billing_id: T.nilable(String),
                created_at: Time,
                dependencies: T.nilable(T::Array[String]),
                description: T.nilable(String),
                display_name: String,
                entitlements:
                  T::Array[
                    Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Entitlement::OrHash
                  ],
                is_latest: T.nilable(T::Boolean),
                max_quantity: T.nilable(Integer),
                metadata: T::Hash[Symbol, String],
                pricing_type:
                  T.nilable(
                    Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::PricingType::OrSymbol
                  ),
                product_id: String,
                status:
                  Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Status::OrSymbol,
                updated_at: Time,
                version_number: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # The unique identifier for the entity
              id:,
              # The unique identifier for the entity in the billing provider
              billing_id:,
              # Timestamp of when the record was created
              created_at:,
              # List of addons the addon is dependant on
              dependencies:,
              # The description of the package
              description:,
              # The display name of the package
              display_name:,
              # List of entitlements of the package
              entitlements:,
              # Indicates if the package is the latest version
              is_latest:,
              # The maximum quantity of this addon that can be added to a subscription
              max_quantity:,
              # Metadata associated with the entity
              metadata:,
              # The pricing type of the package
              pricing_type:,
              # The product id of the package
              product_id:,
              # The status of the package
              status:,
              # Timestamp of when the record was last updated
              updated_at:,
              # The version number of the package
              version_number:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  billing_id: T.nilable(String),
                  created_at: Time,
                  dependencies: T.nilable(T::Array[String]),
                  description: T.nilable(String),
                  display_name: String,
                  entitlements:
                    T::Array[
                      Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Entitlement
                    ],
                  is_latest: T.nilable(T::Boolean),
                  max_quantity: T.nilable(Integer),
                  metadata: T::Hash[Symbol, String],
                  pricing_type:
                    T.nilable(
                      Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::PricingType::TaggedSymbol
                    ),
                  product_id: String,
                  status:
                    Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Status::TaggedSymbol,
                  updated_at: Time,
                  version_number: Integer
                }
              )
            end
            def to_hash
            end

            class Entitlement < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Entitlement,
                    Stigg::Internal::AnyHash
                  )
                end

              # The unique identifier for the entity
              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Entitlement::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # Entitlement reference with type and identifier
              sig do
                params(
                  id: String,
                  type:
                    Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Entitlement::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The unique identifier for the entity
                id:,
                type:
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    type:
                      Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Entitlement::Type::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              module Type
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Entitlement::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FEATURE =
                  T.let(
                    :FEATURE,
                    Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Entitlement::Type::TaggedSymbol
                  )
                CREDIT =
                  T.let(
                    :CREDIT,
                    Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Entitlement::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Entitlement::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # The pricing type of the package
            module PricingType
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::PricingType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FREE =
                T.let(
                  :FREE,
                  Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::PricingType::TaggedSymbol
                )
              PAID =
                T.let(
                  :PAID,
                  Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::PricingType::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :CUSTOM,
                  Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::PricingType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::PricingType::TaggedSymbol
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
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DRAFT =
                T.let(
                  :DRAFT,
                  Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Status::TaggedSymbol
                )
              PUBLISHED =
                T.let(
                  :PUBLISHED,
                  Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Status::TaggedSymbol
                )
              ARCHIVED =
                T.let(
                  :ARCHIVED,
                  Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data::Status::TaggedSymbol
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
end
