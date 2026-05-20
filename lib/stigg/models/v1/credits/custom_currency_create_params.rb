# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Credits
        # @see Stigg::Resources::V1::Credits::CustomCurrencies#create
        class CustomCurrencyCreateParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute id
          #   The unique identifier for the new custom currency
          #
          #   @return [String]
          required :id, String

          # @!attribute display_name
          #   The display name of the custom currency
          #
          #   @return [String]
          required :display_name, String, api_name: :displayName

          # @!attribute description
          #   Description of the currency
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute metadata
          #   Additional metadata to attach to the custom currency
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, Stigg::Internal::Type::HashOf[String]

          # @!attribute symbol
          #   The symbol used to represent the custom currency
          #
          #   @return [String, nil]
          optional :symbol, String

          # @!attribute units
          #   Singular and plural unit labels for a custom currency. Both fields are required
          #   when supplied.
          #
          #   @return [Stigg::Models::V1::Credits::CustomCurrencyCreateParams::Units, nil]
          optional :units, -> { Stigg::V1::Credits::CustomCurrencyCreateParams::Units }

          # @!method initialize(id:, display_name:, description: nil, metadata: nil, symbol: nil, units: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::Credits::CustomCurrencyCreateParams} for more details.
          #
          #   @param id [String] The unique identifier for the new custom currency
          #
          #   @param display_name [String] The display name of the custom currency
          #
          #   @param description [String] Description of the currency
          #
          #   @param metadata [Hash{Symbol=>String}] Additional metadata to attach to the custom currency
          #
          #   @param symbol [String] The symbol used to represent the custom currency
          #
          #   @param units [Stigg::Models::V1::Credits::CustomCurrencyCreateParams::Units] Singular and plural unit labels for a custom currency. Both fields are required
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
