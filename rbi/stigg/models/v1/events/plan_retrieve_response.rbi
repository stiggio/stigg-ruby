# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class PlanRetrieveResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Events::PlanRetrieveResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Plan configuration object
          sig { returns(Stigg::Models::V1::Events::PlanRetrieveResponse::Data) }
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Events::PlanRetrieveResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1::Events::PlanRetrieveResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Plan configuration object
            data:
          )
          end

          sig do
            override.returns(
              { data: Stigg::Models::V1::Events::PlanRetrieveResponse::Data }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Events::PlanRetrieveResponse::Data,
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
                  Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Entitlement
                ]
              )
            end
            attr_accessor :entitlements

            # Indicates if the package is the latest version
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :is_latest

            # Metadata associated with the entity
            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            # The ID of the parent plan, if applicable
            sig { returns(T.nilable(String)) }
            attr_accessor :parent_plan_id

            # The pricing type of the package
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::Events::PlanRetrieveResponse::Data::PricingType::TaggedSymbol
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
                Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Timestamp of when the record was last updated
            sig { returns(Time) }
            attr_accessor :updated_at

            # The version number of the package
            sig { returns(Integer) }
            attr_accessor :version_number

            # Plan configuration object
            sig do
              params(
                id: String,
                billing_id: T.nilable(String),
                created_at: Time,
                description: T.nilable(String),
                display_name: String,
                entitlements:
                  T::Array[
                    Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Entitlement::OrHash
                  ],
                is_latest: T.nilable(T::Boolean),
                metadata: T::Hash[Symbol, String],
                parent_plan_id: T.nilable(String),
                pricing_type:
                  T.nilable(
                    Stigg::Models::V1::Events::PlanRetrieveResponse::Data::PricingType::OrSymbol
                  ),
                product_id: String,
                status:
                  Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Status::OrSymbol,
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
              # The description of the package
              description:,
              # The display name of the package
              display_name:,
              # List of entitlements of the package
              entitlements:,
              # Indicates if the package is the latest version
              is_latest:,
              # Metadata associated with the entity
              metadata:,
              # The ID of the parent plan, if applicable
              parent_plan_id:,
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
                  description: T.nilable(String),
                  display_name: String,
                  entitlements:
                    T::Array[
                      Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Entitlement
                    ],
                  is_latest: T.nilable(T::Boolean),
                  metadata: T::Hash[Symbol, String],
                  parent_plan_id: T.nilable(String),
                  pricing_type:
                    T.nilable(
                      Stigg::Models::V1::Events::PlanRetrieveResponse::Data::PricingType::TaggedSymbol
                    ),
                  product_id: String,
                  status:
                    Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Status::TaggedSymbol,
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
                    Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Entitlement,
                    Stigg::Internal::AnyHash
                  )
                end

              # The unique identifier for the entity
              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Entitlement::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # Entitlement reference with type and identifier
              sig do
                params(
                  id: String,
                  type:
                    Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Entitlement::Type::OrSymbol
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
                      Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Entitlement::Type::TaggedSymbol
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
                      Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Entitlement::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FEATURE =
                  T.let(
                    :FEATURE,
                    Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Entitlement::Type::TaggedSymbol
                  )
                CREDIT =
                  T.let(
                    :CREDIT,
                    Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Entitlement::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Entitlement::Type::TaggedSymbol
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
                    Stigg::Models::V1::Events::PlanRetrieveResponse::Data::PricingType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FREE =
                T.let(
                  :FREE,
                  Stigg::Models::V1::Events::PlanRetrieveResponse::Data::PricingType::TaggedSymbol
                )
              PAID =
                T.let(
                  :PAID,
                  Stigg::Models::V1::Events::PlanRetrieveResponse::Data::PricingType::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :CUSTOM,
                  Stigg::Models::V1::Events::PlanRetrieveResponse::Data::PricingType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Events::PlanRetrieveResponse::Data::PricingType::TaggedSymbol
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
                    Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DRAFT =
                T.let(
                  :DRAFT,
                  Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Status::TaggedSymbol
                )
              PUBLISHED =
                T.let(
                  :PUBLISHED,
                  Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Status::TaggedSymbol
                )
              ARCHIVED =
                T.let(
                  :ARCHIVED,
                  Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Events::PlanRetrieveResponse::Data::Status::TaggedSymbol
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
