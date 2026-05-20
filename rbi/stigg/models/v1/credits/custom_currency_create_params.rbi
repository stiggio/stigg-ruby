# typed: strong

module Stigg
  module Models
    module V1
      module Credits
        class CustomCurrencyCreateParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Credits::CustomCurrencyCreateParams,
                Stigg::Internal::AnyHash
              )
            end

          # The unique identifier for the new custom currency
          sig { returns(String) }
          attr_accessor :id

          # The display name of the custom currency
          sig { returns(String) }
          attr_accessor :display_name

          # Description of the currency
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Additional metadata to attach to the custom currency
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          # The symbol used to represent the custom currency
          sig { returns(T.nilable(String)) }
          attr_reader :symbol

          sig { params(symbol: String).void }
          attr_writer :symbol

          # Singular and plural unit labels for a custom currency. Both fields are required
          # when supplied.
          sig do
            returns(
              T.nilable(Stigg::V1::Credits::CustomCurrencyCreateParams::Units)
            )
          end
          attr_reader :units

          sig do
            params(
              units:
                Stigg::V1::Credits::CustomCurrencyCreateParams::Units::OrHash
            ).void
          end
          attr_writer :units

          sig do
            params(
              id: String,
              display_name: String,
              description: String,
              metadata: T::Hash[Symbol, String],
              symbol: String,
              units:
                Stigg::V1::Credits::CustomCurrencyCreateParams::Units::OrHash,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the new custom currency
            id:,
            # The display name of the custom currency
            display_name:,
            # Description of the currency
            description: nil,
            # Additional metadata to attach to the custom currency
            metadata: nil,
            # The symbol used to represent the custom currency
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
                id: String,
                display_name: String,
                description: String,
                metadata: T::Hash[Symbol, String],
                symbol: String,
                units: Stigg::V1::Credits::CustomCurrencyCreateParams::Units,
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
                  Stigg::V1::Credits::CustomCurrencyCreateParams::Units,
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
