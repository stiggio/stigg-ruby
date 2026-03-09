# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Credits#get_auto_recharge
        class CreditGetAutoRechargeResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Automatic recharge configuration for a customer and currency
          #
          #   @return [Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data]
          required :data, -> { Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data] Automatic recharge configuration for a customer and currency

          # @see Stigg::Models::V1::Events::CreditGetAutoRechargeResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   The unique configuration ID
            #
            #   @return [String, nil]
            required :id, String, nil?: true

            # @!attribute created_at
            #   Timestamp of when the record was created
            #
            #   @return [Time, nil]
            required :created_at, Time, api_name: :createdAt, nil?: true

            # @!attribute currency_id
            #   The currency ID for this configuration
            #
            #   @return [String]
            required :currency_id, String, api_name: :currencyId

            # @!attribute customer_id
            #   The customer ID this configuration belongs to
            #
            #   @return [String]
            required :customer_id, String, api_name: :customerId

            # @!attribute grant_expiration_period
            #   Expiration period for auto-recharge grants (1_MONTH or 1_YEAR)
            #
            #   @return [Symbol, Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::GrantExpirationPeriod]
            required :grant_expiration_period,
                     enum: -> { Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::GrantExpirationPeriod },
                     api_name: :grantExpirationPeriod

            # @!attribute is_enabled
            #   Whether automatic recharge is enabled
            #
            #   @return [Boolean]
            required :is_enabled, Stigg::Internal::Type::Boolean, api_name: :isEnabled

            # @!attribute max_spend_limit
            #   Maximum monthly spend limit for automatic recharges
            #
            #   @return [Float, nil]
            required :max_spend_limit, Float, api_name: :maxSpendLimit, nil?: true

            # @!attribute target_balance
            #   The target credit balance to recharge to
            #
            #   @return [Float]
            required :target_balance, Float, api_name: :targetBalance

            # @!attribute threshold_type
            #   The threshold type (CREDIT_AMOUNT or DOLLAR_AMOUNT)
            #
            #   @return [Symbol, Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::ThresholdType]
            required :threshold_type,
                     enum: -> { Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::ThresholdType },
                     api_name: :thresholdType

            # @!attribute threshold_value
            #   The threshold value that triggers a recharge
            #
            #   @return [Float]
            required :threshold_value, Float, api_name: :thresholdValue

            # @!attribute updated_at
            #   Timestamp of when the record was last updated
            #
            #   @return [Time, nil]
            required :updated_at, Time, api_name: :updatedAt, nil?: true

            # @!method initialize(id:, created_at:, currency_id:, customer_id:, grant_expiration_period:, is_enabled:, max_spend_limit:, target_balance:, threshold_type:, threshold_value:, updated_at:)
            #   Automatic recharge configuration for a customer and currency
            #
            #   @param id [String, nil] The unique configuration ID
            #
            #   @param created_at [Time, nil] Timestamp of when the record was created
            #
            #   @param currency_id [String] The currency ID for this configuration
            #
            #   @param customer_id [String] The customer ID this configuration belongs to
            #
            #   @param grant_expiration_period [Symbol, Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::GrantExpirationPeriod] Expiration period for auto-recharge grants (1_MONTH or 1_YEAR)
            #
            #   @param is_enabled [Boolean] Whether automatic recharge is enabled
            #
            #   @param max_spend_limit [Float, nil] Maximum monthly spend limit for automatic recharges
            #
            #   @param target_balance [Float] The target credit balance to recharge to
            #
            #   @param threshold_type [Symbol, Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::ThresholdType] The threshold type (CREDIT_AMOUNT or DOLLAR_AMOUNT)
            #
            #   @param threshold_value [Float] The threshold value that triggers a recharge
            #
            #   @param updated_at [Time, nil] Timestamp of when the record was last updated

            # Expiration period for auto-recharge grants (1_MONTH or 1_YEAR)
            #
            # @see Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data#grant_expiration_period
            module GrantExpirationPeriod
              extend Stigg::Internal::Type::Enum

              GRANT_EXPIRATION_PERIOD_1_MONTH = :"1_MONTH"
              GRANT_EXPIRATION_PERIOD_1_YEAR = :"1_YEAR"

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The threshold type (CREDIT_AMOUNT or DOLLAR_AMOUNT)
            #
            # @see Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data#threshold_type
            module ThresholdType
              extend Stigg::Internal::Type::Enum

              CREDIT_AMOUNT = :CREDIT_AMOUNT
              DOLLAR_AMOUNT = :DOLLAR_AMOUNT

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
