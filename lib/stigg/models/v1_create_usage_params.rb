# frozen_string_literal: true

module Stigg
  module Models
    # @see Stigg::Resources::V1#create_usage
    class V1CreateUsageParams < Stigg::Internal::Type::BaseModel
      extend Stigg::Internal::Type::RequestParameters::Converter
      include Stigg::Internal::Type::RequestParameters

      # @!attribute usages
      #   A list of usage reports to be submitted in bulk
      #
      #   @return [Array<Stigg::Models::V1CreateUsageParams::Usage>]
      required :usages, -> { Stigg::Internal::Type::ArrayOf[Stigg::V1CreateUsageParams::Usage] }

      # @!method initialize(usages:, request_options: {})
      #   @param usages [Array<Stigg::Models::V1CreateUsageParams::Usage>] A list of usage reports to be submitted in bulk
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
        #   The value to report for usage
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
                 -> { Stigg::Internal::Type::HashOf[union: Stigg::V1CreateUsageParams::Usage::Dimension] }

        # @!attribute resource_id
        #   Resource id
        #
        #   @return [String, nil]
        optional :resource_id, String, api_name: :resourceId, nil?: true

        # @!attribute update_behavior
        #   The method by which the usage value should be updated
        #
        #   @return [Symbol, Stigg::Models::V1CreateUsageParams::Usage::UpdateBehavior, nil]
        optional :update_behavior,
                 enum: -> { Stigg::V1CreateUsageParams::Usage::UpdateBehavior },
                 api_name: :updateBehavior

        # @!method initialize(customer_id:, feature_id:, value:, created_at: nil, dimensions: nil, resource_id: nil, update_behavior: nil)
        #   Single usage measurement
        #
        #   @param customer_id [String] Customer id
        #
        #   @param feature_id [String] Feature id
        #
        #   @param value [Integer] The value to report for usage
        #
        #   @param created_at [Time] Timestamp of when the record was created
        #
        #   @param dimensions [Hash{Symbol=>String, Float, Boolean}] Additional dimensions for the usage report
        #
        #   @param resource_id [String, nil] Resource id
        #
        #   @param update_behavior [Symbol, Stigg::Models::V1CreateUsageParams::Usage::UpdateBehavior] The method by which the usage value should be updated

        module Dimension
          extend Stigg::Internal::Type::Union

          variant String

          variant Float

          variant Stigg::Internal::Type::Boolean

          # @!method self.variants
          #   @return [Array(String, Float, Boolean)]
        end

        # The method by which the usage value should be updated
        #
        # @see Stigg::Models::V1CreateUsageParams::Usage#update_behavior
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
