# frozen_string_literal: true

module Stigg
  module Models
    # @see Stigg::Resources::V1#create_event
    class V1CreateEventResponse < Stigg::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Object]
      required :data, Stigg::Internal::Type::Unknown

      # @!method initialize(data:)
      #   @param data [Object]
    end
  end
end
