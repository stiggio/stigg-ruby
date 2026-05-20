# typed: strong

module Stigg
  module Models
    module V1
      module Events
        module Credits
          class CustomCurrencyCreateResponse < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Events::Credits::CustomCurrencyCreateResponse,
                  Stigg::Internal::AnyHash
                )
              end

            # A custom currency used to denominate credit-based entitlements and pricing
            sig do
              returns(
                Stigg::Models::V1::Events::Credits::CustomCurrencyCreateResponse::Data
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Stigg::Models::V1::Events::Credits::CustomCurrencyCreateResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            # Response object
            sig do
              params(
                data:
                  Stigg::Models::V1::Events::Credits::CustomCurrencyCreateResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # A custom currency used to denominate credit-based entitlements and pricing
              data:
            )
            end

            sig do
              override.returns(
                {
                  data:
                    Stigg::Models::V1::Events::Credits::CustomCurrencyCreateResponse::Data
                }
              )
            end
            def to_hash
            end

            class Data < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Events::Credits::CustomCurrencyCreateResponse::Data,
                    Stigg::Internal::AnyHash
                  )
                end

              # The unique identifier for the custom currency
              sig { returns(String) }
              attr_accessor :id

              # Timestamp of when the record was deleted
              sig { returns(T.nilable(Time)) }
              attr_accessor :archived_at

              # Timestamp of when the record was created
              sig { returns(Time) }
              attr_accessor :created_at

              # Description of the currency
              sig { returns(T.nilable(String)) }
              attr_accessor :description

              # The display name of the custom currency
              sig { returns(String) }
              attr_accessor :display_name

              # Metadata associated with the entity
              sig { returns(T::Hash[Symbol, String]) }
              attr_accessor :metadata

              # The symbol used to represent the custom currency
              sig { returns(T.nilable(String)) }
              attr_accessor :symbol

              # Singular and plural unit labels for a custom currency
              sig do
                returns(
                  T.nilable(
                    Stigg::Models::V1::Events::Credits::CustomCurrencyCreateResponse::Data::Units
                  )
                )
              end
              attr_reader :units

              sig do
                params(
                  units:
                    T.nilable(
                      Stigg::Models::V1::Events::Credits::CustomCurrencyCreateResponse::Data::Units::OrHash
                    )
                ).void
              end
              attr_writer :units

              # Timestamp of when the record was last updated
              sig { returns(Time) }
              attr_accessor :updated_at

              # A custom currency used to denominate credit-based entitlements and pricing
              sig do
                params(
                  id: String,
                  archived_at: T.nilable(Time),
                  created_at: Time,
                  description: T.nilable(String),
                  display_name: String,
                  metadata: T::Hash[Symbol, String],
                  symbol: T.nilable(String),
                  units:
                    T.nilable(
                      Stigg::Models::V1::Events::Credits::CustomCurrencyCreateResponse::Data::Units::OrHash
                    ),
                  updated_at: Time
                ).returns(T.attached_class)
              end
              def self.new(
                # The unique identifier for the custom currency
                id:,
                # Timestamp of when the record was deleted
                archived_at:,
                # Timestamp of when the record was created
                created_at:,
                # Description of the currency
                description:,
                # The display name of the custom currency
                display_name:,
                # Metadata associated with the entity
                metadata:,
                # The symbol used to represent the custom currency
                symbol:,
                # Singular and plural unit labels for a custom currency
                units:,
                # Timestamp of when the record was last updated
                updated_at:
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    archived_at: T.nilable(Time),
                    created_at: Time,
                    description: T.nilable(String),
                    display_name: String,
                    metadata: T::Hash[Symbol, String],
                    symbol: T.nilable(String),
                    units:
                      T.nilable(
                        Stigg::Models::V1::Events::Credits::CustomCurrencyCreateResponse::Data::Units
                      ),
                    updated_at: Time
                  }
                )
              end
              def to_hash
              end

              class Units < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::Events::Credits::CustomCurrencyCreateResponse::Data::Units,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Plural form of the unit label
                sig { returns(T.nilable(String)) }
                attr_accessor :plural

                # Singular form of the unit label
                sig { returns(T.nilable(String)) }
                attr_accessor :singular

                # Singular and plural unit labels for a custom currency
                sig do
                  params(
                    plural: T.nilable(String),
                    singular: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Plural form of the unit label
                  plural:,
                  # Singular form of the unit label
                  singular:
                )
                end

                sig do
                  override.returns(
                    { plural: T.nilable(String), singular: T.nilable(String) }
                  )
                end
                def to_hash
                end
              end
            end
          end
        end
      end
    end
  end
end
