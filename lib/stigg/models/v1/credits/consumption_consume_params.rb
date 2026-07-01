# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Credits
        # @see Stigg::Resources::V1::Credits::Consumption#consume
        class ConsumptionConsumeParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute amount
          #   The amount of credits to consume
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute currency_id
          #   The credit currency to consume from (required)
          #
          #   @return [String]
          required :currency_id, String, api_name: :currencyId

          # @!attribute customer_id
          #   The customer to consume credits from (required)
          #
          #   @return [String]
          required :customer_id, String, api_name: :customerId

          # @!attribute idempotency_key
          #   A unique key used to deduplicate the consumption (required)
          #
          #   @return [String]
          required :idempotency_key, String, api_name: :idempotencyKey

          # @!attribute created_at
          #   Optional timestamp the consumption is attributed to
          #
          #   @return [Time, nil]
          optional :created_at, Time, api_name: :createdAt

          # @!attribute dimensions
          #   Optional dimensions describing the consumption
          #
          #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
          optional :dimensions,
                   -> { Stigg::Internal::Type::HashOf[union: Stigg::V1::Credits::ConsumptionConsumeParams::Dimension] }

          # @!attribute resource_id
          #   Optional resource the consumption is attributed to
          #
          #   @return [String, nil]
          optional :resource_id, String, api_name: :resourceId

          # @!attribute x_account_id
          #
          #   @return [String, nil]
          optional :x_account_id, String

          # @!attribute x_environment_id
          #
          #   @return [String, nil]
          optional :x_environment_id, String

          # @!method initialize(amount:, currency_id:, customer_id:, idempotency_key:, created_at: nil, dimensions: nil, resource_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #   @param amount [Float] The amount of credits to consume
          #
          #   @param currency_id [String] The credit currency to consume from (required)
          #
          #   @param customer_id [String] The customer to consume credits from (required)
          #
          #   @param idempotency_key [String] A unique key used to deduplicate the consumption (required)
          #
          #   @param created_at [Time] Optional timestamp the consumption is attributed to
          #
          #   @param dimensions [Hash{Symbol=>String, Float, Boolean}] Optional dimensions describing the consumption
          #
          #   @param resource_id [String] Optional resource the consumption is attributed to
          #
          #   @param x_account_id [String]
          #
          #   @param x_environment_id [String]
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          module Dimension
            extend Stigg::Internal::Type::Union

            variant String

            variant Float

            variant Stigg::Internal::Type::Boolean

            # @!method self.variants
            #   @return [Array(String, Float, Boolean)]
          end
        end
      end
    end
  end
end
