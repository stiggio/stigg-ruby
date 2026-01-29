# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Events#report
      class EventReportResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #   Empty success response confirming that events were successfully ingested and
        #   queued for processing by Stigg's metering system.
        #
        #   @return [Object]
        required :data, Stigg::Internal::Type::Unknown

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::EventReportResponse} for more details.
        #
        #   Response object
        #
        #   @param data [Object] Empty success response confirming that events were successfully ingested and que
      end
    end
  end
end
