# frozen_string_literal: true

module Stigg
  module Models
    module Internal
      module Beta
        # @see Stigg::Resources::Internal::Beta::EventQueues#delete
        class EventQueueDeleteParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute queue_name
          #
          #   @return [String]
          required :queue_name, String

          # @!method initialize(queue_name:, request_options: {})
          #   @param queue_name [String]
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
