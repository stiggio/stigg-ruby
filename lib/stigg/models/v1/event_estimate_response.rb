# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Events#estimate
      class EventEstimateResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #   Estimated credit cost, current balance and balance after
        #
        #   @return [Stigg::Models::V1::EventEstimateResponse::Data]
        required :data, -> { Stigg::Models::V1::EventEstimateResponse::Data }

        # @!method initialize(data:)
        #   Response object
        #
        #   @param data [Stigg::Models::V1::EventEstimateResponse::Data] Estimated credit cost, current balance and balance after

        # @see Stigg::Models::V1::EventEstimateResponse#data
        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute estimates
          #   Per-currency cost estimates
          #
          #   @return [Array<Stigg::Models::V1::EventEstimateResponse::Data::Estimate>]
          required :estimates,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::EventEstimateResponse::Data::Estimate] }

          # @!attribute warnings
          #   Request-level warnings about the estimation context
          #
          #   @return [Array<Symbol, Stigg::Models::V1::EventEstimateResponse::Data::Warning>]
          required :warnings,
                   -> { Stigg::Internal::Type::ArrayOf[enum: Stigg::Models::V1::EventEstimateResponse::Data::Warning] }

          # @!method initialize(estimates:, warnings:)
          #   Estimated credit cost, current balance and balance after
          #
          #   @param estimates [Array<Stigg::Models::V1::EventEstimateResponse::Data::Estimate>] Per-currency cost estimates
          #
          #   @param warnings [Array<Symbol, Stigg::Models::V1::EventEstimateResponse::Data::Warning>] Request-level warnings about the estimation context

          class Estimate < Stigg::Internal::Type::BaseModel
            # @!attribute balance_after_estimate
            #   The credit balance after subtracting the estimated cost
            #
            #   @return [Float]
            required :balance_after_estimate, Float, api_name: :balanceAfterEstimate

            # @!attribute breakdown
            #   Estimated cost contribution per feature
            #
            #   @return [Array<Stigg::Models::V1::EventEstimateResponse::Data::Estimate::Breakdown>]
            required :breakdown,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::EventEstimateResponse::Data::Estimate::Breakdown] }

            # @!attribute currency_id
            #   The credit currency identifier
            #
            #   @return [String]
            required :currency_id, String, api_name: :currencyId

            # @!attribute current_balance
            #   The current credit balance, including not-yet-reconciled consumption
            #
            #   @return [Float]
            required :current_balance, Float, api_name: :currentBalance

            # @!attribute estimated_cost
            #   The estimated credit cost of the reported event or usage
            #
            #   @return [Float]
            required :estimated_cost, Float, api_name: :estimatedCost

            # @!attribute would_overdraft
            #   Whether the estimated consumption would bring the balance below zero
            #
            #   @return [Boolean]
            required :would_overdraft, Stigg::Internal::Type::Boolean, api_name: :wouldOverdraft

            # @!method initialize(balance_after_estimate:, breakdown:, currency_id:, current_balance:, estimated_cost:, would_overdraft:)
            #   @param balance_after_estimate [Float] The credit balance after subtracting the estimated cost
            #
            #   @param breakdown [Array<Stigg::Models::V1::EventEstimateResponse::Data::Estimate::Breakdown>] Estimated cost contribution per feature
            #
            #   @param currency_id [String] The credit currency identifier
            #
            #   @param current_balance [Float] The current credit balance, including not-yet-reconciled consumption
            #
            #   @param estimated_cost [Float] The estimated credit cost of the reported event or usage
            #
            #   @param would_overdraft [Boolean] Whether the estimated consumption would bring the balance below zero

            class Breakdown < Stigg::Internal::Type::BaseModel
              # @!attribute cost
              #   The estimated credit cost contributed by this feature
              #
              #   @return [Float]
              required :cost, Float

              # @!attribute feature_id
              #   The feature whose meter contributed this cost
              #
              #   @return [String]
              required :feature_id, String, api_name: :featureId

              # @!attribute warning_code
              #   Warning explaining why this cost may be inaccurate, if any
              #
              #   @return [Symbol, Stigg::Models::V1::EventEstimateResponse::Data::Estimate::Breakdown::WarningCode, nil]
              required :warning_code,
                       enum: -> { Stigg::Models::V1::EventEstimateResponse::Data::Estimate::Breakdown::WarningCode },
                       api_name: :warningCode,
                       nil?: true

              # @!method initialize(cost:, feature_id:, warning_code:)
              #   @param cost [Float] The estimated credit cost contributed by this feature
              #
              #   @param feature_id [String] The feature whose meter contributed this cost
              #
              #   @param warning_code [Symbol, Stigg::Models::V1::EventEstimateResponse::Data::Estimate::Breakdown::WarningCode, nil] Warning explaining why this cost may be inaccurate, if any

              # Warning explaining why this cost may be inaccurate, if any
              #
              # @see Stigg::Models::V1::EventEstimateResponse::Data::Estimate::Breakdown#warning_code
              module WarningCode
                extend Stigg::Internal::Type::Enum

                UNSUPPORTED_AGGREGATION = :UNSUPPORTED_AGGREGATION

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          module Warning
            extend Stigg::Internal::Type::Enum

            RESOURCE_SCOPED_SUBSCRIPTION_EXISTS = :RESOURCE_SCOPED_SUBSCRIPTION_EXISTS
            FEATURE_NOT_FOUND = :FEATURE_NOT_FOUND
            FEATURE_NOT_CREDIT_BASED = :FEATURE_NOT_CREDIT_BASED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
