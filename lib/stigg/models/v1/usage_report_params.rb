# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Usage#report
      class UsageReportParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute usages
        #   A list of usage reports to be submitted in bulk
        #
        #   @return [Array<Stigg::Models::V1::UsageReportParams::Usage>]
        required :usages, -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::UsageReportParams::Usage] }

        # @!attribute x_account_id
        #
        #   @return [String, nil]
        optional :x_account_id, String

        # @!attribute x_environment_id
        #
        #   @return [String, nil]
        optional :x_environment_id, String

        # @!method initialize(usages:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #   @param usages [Array<Stigg::Models::V1::UsageReportParams::Usage>] A list of usage reports to be submitted in bulk
        #
        #   @param x_account_id [String]
        #
        #   @param x_environment_id [String]
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        class Usage < Stigg::Internal::Type::BaseModel
          # @!attribute customer_id
          #   Customer id
          #
          #   @return [String]
          required :customer_id, String, api_name: :customerId

          # @!attribute feature_id
          #   Feature id
          #
          #   @return [String]
          required :feature_id, String, api_name: :featureId

          # @!attribute value
          #   The value to report for usage. Must be a whole number — the REST API does not
          #   accept fractional (float) usage values; scale up (e.g. report cents instead of
          #   dollars, or milliseconds instead of seconds) if you need sub-unit precision.
          #
          #   @return [Integer]
          required :value, Integer

          # @!attribute created_at
          #   Timestamp of when the record was created
          #
          #   @return [Time, nil]
          optional :created_at, Time, api_name: :createdAt

          # @!attribute dimensions
          #   Additional dimensions for the usage report
          #
          #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
          optional :dimensions,
                   -> { Stigg::Internal::Type::HashOf[union: Stigg::V1::UsageReportParams::Usage::Dimension] }

          # @!attribute idempotency_key
          #   A key you provide to safely retry the same usage report without double-counting
          #   it. Reports with a previously-seen idempotency key are deduplicated for 7 days;
          #   after that window a retry is treated as new usage.
          #
          #   @return [String, nil]
          optional :idempotency_key, String, api_name: :idempotencyKey

          # @!attribute resource_id
          #   The customer resource this usage applies to. Optional — only required if the
          #   customer has multiple resources (for example, one subscription per workspace or
          #   site) and usage needs to be tracked separately per resource; omit it to report
          #   usage at the customer level.
          #
          #   @return [String, nil]
          optional :resource_id, String, api_name: :resourceId, nil?: true

          # @!attribute update_behavior
          #   How the reported value is applied: DELTA (default) adds it to the feature's
          #   current usage; SET treats it as the new absolute usage total, and Stigg computes
          #   the delta internally.
          #
          #   @return [Symbol, Stigg::Models::V1::UsageReportParams::Usage::UpdateBehavior, nil]
          optional :update_behavior,
                   enum: -> { Stigg::V1::UsageReportParams::Usage::UpdateBehavior },
                   api_name: :updateBehavior

          # @!method initialize(customer_id:, feature_id:, value:, created_at: nil, dimensions: nil, idempotency_key: nil, resource_id: nil, update_behavior: nil)
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::UsageReportParams::Usage} for more details.
          #
          #   Single usage measurement
          #
          #   @param customer_id [String] Customer id
          #
          #   @param feature_id [String] Feature id
          #
          #   @param value [Integer] The value to report for usage. Must be a whole number — the REST API does not ac
          #
          #   @param created_at [Time] Timestamp of when the record was created
          #
          #   @param dimensions [Hash{Symbol=>String, Float, Boolean}] Additional dimensions for the usage report
          #
          #   @param idempotency_key [String] A key you provide to safely retry the same usage report without double-counting
          #
          #   @param resource_id [String, nil] The customer resource this usage applies to. Optional — only required if the cus
          #
          #   @param update_behavior [Symbol, Stigg::Models::V1::UsageReportParams::Usage::UpdateBehavior] How the reported value is applied: DELTA (default) adds it to the feature's curr

          module Dimension
            extend Stigg::Internal::Type::Union

            variant String

            variant Float

            variant Stigg::Internal::Type::Boolean

            # @!method self.variants
            #   @return [Array(String, Float, Boolean)]
          end

          # How the reported value is applied: DELTA (default) adds it to the feature's
          # current usage; SET treats it as the new absolute usage total, and Stigg computes
          # the delta internally.
          #
          # @see Stigg::Models::V1::UsageReportParams::Usage#update_behavior
          module UpdateBehavior
            extend Stigg::Internal::Type::Enum

            DELTA = :DELTA
            SET = :SET

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
