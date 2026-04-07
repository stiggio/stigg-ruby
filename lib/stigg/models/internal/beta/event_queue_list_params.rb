# frozen_string_literal: true

module Stigg
  module Models
    module Internal
      module Beta
        # @see Stigg::Resources::Internal::Beta::EventQueues#list
        class EventQueueListParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
