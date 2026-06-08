# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Credits
        # @see Stigg::Resources::V1::Credits::CustomCurrencies#update
        class CustomCurrencyUpdateParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute currency_id
          #
          #   @return [String]
          required :currency_id, String

          # @!attribute description
          #   A human-readable description of the custom currency. Send an empty string to
          #   clear.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute display_name
          #   The display name of the custom currency
          #
          #   @return [String, nil]
          optional :display_name, String, api_name: :displayName

          # @!attribute metadata
          #   Additional metadata to attach to the custom currency
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, Stigg::Internal::Type::HashOf[String], nil?: true

          # @!attribute symbol
          #   The symbol used to represent the custom currency. Send an empty string to clear.
          #
          #   @return [String, nil]
          optional :symbol, String, nil?: true

          # @!attribute units
          #   Singular and plural unit labels for a custom currency. Both fields are required
          #   when supplied.
          #
          #   @return [Stigg::Models::V1::Credits::CustomCurrencyUpdateParams::Units, nil]
          optional :units, -> { Stigg::V1::Credits::CustomCurrencyUpdateParams::Units }

          # @!attribute x_account_id
          #
          #   @return [String, nil]
          optional :x_account_id, String

          # @!attribute x_environment_id
          #
          #   @return [String, nil]
          optional :x_environment_id, String

          # @!method initialize(currency_id:, description: nil, display_name: nil, metadata: nil, symbol: nil, units: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::Credits::CustomCurrencyUpdateParams} for more details.
          #
          #   @param currency_id [String]
          #
          #   @param description [String, nil] A human-readable description of the custom currency. Send an empty string to cle
          #
          #   @param display_name [String] The display name of the custom currency
          #
          #   @param metadata [Hash{Symbol=>String}, nil] Additional metadata to attach to the custom currency
          #
          #   @param symbol [String, nil] The symbol used to represent the custom currency. Send an empty string to clear.
          #
          #   @param units [Stigg::Models::V1::Credits::CustomCurrencyUpdateParams::Units] Singular and plural unit labels for a custom currency. Both fields are required
          #
          #   @param x_account_id [String]
          #
          #   @param x_environment_id [String]
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          class Units < Stigg::Internal::Type::BaseModel
            # @!attribute plural
            #   Plural form of the unit label
            #
            #   @return [String]
            required :plural, String

            # @!attribute singular
            #   Singular form of the unit label
            #
            #   @return [String]
            required :singular, String

            # @!method initialize(plural:, singular:)
            #   Singular and plural unit labels for a custom currency. Both fields are required
            #   when supplied.
            #
            #   @param plural [String] Plural form of the unit label
            #
            #   @param singular [String] Singular form of the unit label
          end
        end
      end
    end
  end
end
