# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Credits
        # @see Stigg::Resources::V1::Credits::CustomCurrencies#list
        class CustomCurrencyListParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute after
          #   Return items that come after this cursor
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute before
          #   Return items that come before this cursor
          #
          #   @return [String, nil]
          optional :before, String

          # @!attribute limit
          #   Maximum number of items to return
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute status
          #   Filter by custom currency status. Supports comma-separated values (e.g.,
          #   `ACTIVE,ARCHIVED`). Defaults to `ACTIVE`.
          #
          #   @return [Array<Symbol, Stigg::Models::V1::Credits::CustomCurrencyListParams::Status>, nil]
          optional :status,
                   -> { Stigg::Internal::Type::ArrayOf[enum: Stigg::V1::Credits::CustomCurrencyListParams::Status] }

          # @!attribute x_account_id
          #
          #   @return [String, nil]
          optional :x_account_id, String

          # @!attribute x_environment_id
          #
          #   @return [String, nil]
          optional :x_environment_id, String

          # @!method initialize(after: nil, before: nil, limit: nil, status: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::Credits::CustomCurrencyListParams} for more details.
          #
          #   @param after [String] Return items that come after this cursor
          #
          #   @param before [String] Return items that come before this cursor
          #
          #   @param limit [Integer] Maximum number of items to return
          #
          #   @param status [Array<Symbol, Stigg::Models::V1::Credits::CustomCurrencyListParams::Status>] Filter by custom currency status. Supports comma-separated values (e.g., `ACTIVE
          #
          #   @param x_account_id [String]
          #
          #   @param x_environment_id [String]
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          module Status
            extend Stigg::Internal::Type::Enum

            ACTIVE = :ACTIVE
            ARCHIVED = :ARCHIVED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
