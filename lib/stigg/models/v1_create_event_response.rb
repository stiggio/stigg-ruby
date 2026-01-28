# frozen_string_literal: true

module Stigg
  module Models
    # @see Stigg::Resources::V1#create_event
    class V1CreateEventResponse < Stigg::Internal::Type::BaseModel
      # @!attribute data
      #   Empty success response confirming that events were successfully ingested and
      #   queued for processing by Stigg's metering system.
      #
      #   @return [Object]
      required :data, Stigg::Internal::Type::Unknown

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {Stigg::Models::V1CreateEventResponse} for more details.
      #
      #   Response object
      #
      #   @param data [Object] Empty success response confirming that events were successfully ingested and que
    end
  end
end
