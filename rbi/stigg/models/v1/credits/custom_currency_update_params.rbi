# typed: strong

module Stigg
  module Models
    module V1
      module Credits
        class CustomCurrencyUpdateParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Credits::CustomCurrencyUpdateParams,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :currency_id

          # A human-readable description of the custom currency. Send an empty string to
          # clear.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # The display name of the custom currency
          sig { returns(T.nilable(String)) }
          attr_reader :display_name

          sig { params(display_name: String).void }
          attr_writer :display_name

          # Additional metadata to attach to the custom currency
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_accessor :metadata

          # The symbol used to represent the custom currency. Send an empty string to clear.
          sig { returns(T.nilable(String)) }
          attr_accessor :symbol

          # Singular and plural unit labels for a custom currency. Both fields are required
          # when supplied.
          sig do
            returns(
              T.nilable(Stigg::V1::Credits::CustomCurrencyUpdateParams::Units)
            )
          end
          attr_reader :units

          sig do
            params(
              units:
                Stigg::V1::Credits::CustomCurrencyUpdateParams::Units::OrHash
            ).void
          end
          attr_writer :units

          sig do
            params(
              currency_id: String,
              description: T.nilable(String),
              display_name: String,
              metadata: T.nilable(T::Hash[Symbol, String]),
              symbol: T.nilable(String),
              units:
                Stigg::V1::Credits::CustomCurrencyUpdateParams::Units::OrHash,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            currency_id:,
            # A human-readable description of the custom currency. Send an empty string to
            # clear.
            description: nil,
            # The display name of the custom currency
            display_name: nil,
            # Additional metadata to attach to the custom currency
            metadata: nil,
            # The symbol used to represent the custom currency. Send an empty string to clear.
            symbol: nil,
            # Singular and plural unit labels for a custom currency. Both fields are required
            # when supplied.
            units: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                currency_id: String,
                description: T.nilable(String),
                display_name: String,
                metadata: T.nilable(T::Hash[Symbol, String]),
                symbol: T.nilable(String),
                units: Stigg::V1::Credits::CustomCurrencyUpdateParams::Units,
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Units < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Credits::CustomCurrencyUpdateParams::Units,
                  Stigg::Internal::AnyHash
                )
              end

            # Plural form of the unit label
            sig { returns(String) }
            attr_accessor :plural

            # Singular form of the unit label
            sig { returns(String) }
            attr_accessor :singular

            # Singular and plural unit labels for a custom currency. Both fields are required
            # when supplied.
            sig do
              params(plural: String, singular: String).returns(T.attached_class)
            end
            def self.new(
              # Plural form of the unit label
              plural:,
              # Singular form of the unit label
              singular:
            )
            end

            sig { override.returns({ plural: String, singular: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
