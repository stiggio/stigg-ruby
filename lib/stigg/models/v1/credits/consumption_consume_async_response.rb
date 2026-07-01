# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Credits
        # @see Stigg::Resources::V1::Credits::Consumption#consume_async
        class ConsumptionConsumeAsyncResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Confirmation that the credit consumptions were accepted for processing
          #
          #   @return [Object]
          required :data, Stigg::Internal::Type::Unknown

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Object] Confirmation that the credit consumptions were accepted for processing
        end
      end
    end
  end
end
