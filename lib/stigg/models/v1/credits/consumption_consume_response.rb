# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Credits
        # @see Stigg::Resources::V1::Credits::Consumption#consume
        class ConsumptionConsumeResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Result of a synchronous direct credit consumption
          #
          #   @return [Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data]
          required :data, -> { Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data] Result of a synchronous direct credit consumption

          # @see Stigg::Models::V1::Credits::ConsumptionConsumeResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute amount
            #   The amount of credits consumed
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute currency_id
            #   The credit currency the credits were consumed from
            #
            #   @return [String]
            required :currency_id, String, api_name: :currencyId

            # @!attribute customer_id
            #   The customer the credits were consumed from
            #
            #   @return [String]
            required :customer_id, String, api_name: :customerId

            # @!attribute timestamp
            #   The timestamp the consumption was attributed to
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute credit
            #   The optimistic credit balance after consumption (when sync credit consumption is
            #   enabled)
            #
            #   @return [Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Credit, nil]
            optional :credit, -> { Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Credit }, nil?: true

            # @!attribute resource_id
            #   The resource the consumption was attributed to
            #
            #   @return [String, nil]
            optional :resource_id, String, api_name: :resourceId, nil?: true

            # @!method initialize(amount:, currency_id:, customer_id:, timestamp:, credit: nil, resource_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data} for more details.
            #
            #   Result of a synchronous direct credit consumption
            #
            #   @param amount [Float] The amount of credits consumed
            #
            #   @param currency_id [String] The credit currency the credits were consumed from
            #
            #   @param customer_id [String] The customer the credits were consumed from
            #
            #   @param timestamp [Time] The timestamp the consumption was attributed to
            #
            #   @param credit [Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Credit, nil] The optimistic credit balance after consumption (when sync credit consumption is
            #
            #   @param resource_id [String, nil] The resource the consumption was attributed to

            # @see Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data#credit
            class Credit < Stigg::Internal::Type::BaseModel
              # @!attribute currency_id
              #   The credit currency identifier
              #
              #   @return [String]
              required :currency_id, String, api_name: :currencyId

              # @!attribute current_usage
              #   The wallet's total consumed credits for this currency (optimistic — includes
              #   not-yet-reconciled usage), shared across every feature that draws on the
              #   currency. This is the running balance, not this call's deduction — see
              #   `consumed` for that.
              #
              #   @return [Float]
              required :current_usage, Float, api_name: :currentUsage

              # @!attribute timestamp
              #   The grant-version timestamp of this balance, used by the SDK for last-write-wins
              #   reconciliation
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute usage_limit
              #   The total credits granted
              #
              #   @return [Float]
              required :usage_limit, Float, api_name: :usageLimit

              # @!attribute usage_period_end
              #   End of the current credit grant period (when recurring credits reset), if
              #   applicable
              #
              #   @return [Time, nil]
              optional :usage_period_end, Time, api_name: :usagePeriodEnd, nil?: true

              # @!method initialize(currency_id:, current_usage:, timestamp:, usage_limit:, usage_period_end: nil)
              #   Some parameter documentations has been truncated, see
              #   {Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Credit} for more
              #   details.
              #
              #   The optimistic credit balance after consumption (when sync credit consumption is
              #   enabled)
              #
              #   @param currency_id [String] The credit currency identifier
              #
              #   @param current_usage [Float] The wallet's total consumed credits for this currency (optimistic — includes not
              #
              #   @param timestamp [Time] The grant-version timestamp of this balance, used by the SDK for last-write-wins
              #
              #   @param usage_limit [Float] The total credits granted
              #
              #   @param usage_period_end [Time, nil] End of the current credit grant period (when recurring credits reset), if applic
            end
          end
        end
      end
    end
  end
end
