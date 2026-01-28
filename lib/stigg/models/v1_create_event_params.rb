# frozen_string_literal: true

module Stigg
  module Models
    # @see Stigg::Resources::V1#create_event
    class V1CreateEventParams < Stigg::Internal::Type::BaseModel
      extend Stigg::Internal::Type::RequestParameters::Converter
      include Stigg::Internal::Type::RequestParameters

      # @!attribute events
      #   A list of usage events to report
      #
      #   @return [Array<Stigg::Models::V1CreateEventParams::Event>]
      required :events, -> { Stigg::Internal::Type::ArrayOf[Stigg::V1CreateEventParams::Event] }

      # @!method initialize(events:, request_options: {})
      #   @param events [Array<Stigg::Models::V1CreateEventParams::Event>] A list of usage events to report
      #
      #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

      class Event < Stigg::Internal::Type::BaseModel
        # @!attribute customer_id
        #   Customer id
        #
        #   @return [String]
        required :customer_id, String, api_name: :customerId

        # @!attribute event_name
        #   The name of the usage event
        #
        #   @return [String]
        required :event_name, String, api_name: :eventName

        # @!attribute idempotency_key
        #   Idempotency key
        #
        #   @return [String]
        required :idempotency_key, String, api_name: :idempotencyKey

        # @!attribute dimensions
        #   Dimensions associated with the usage event
        #
        #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
        optional :dimensions,
                 -> { Stigg::Internal::Type::HashOf[union: Stigg::V1CreateEventParams::Event::Dimension] }

        # @!attribute resource_id
        #   Resource id
        #
        #   @return [String, nil]
        optional :resource_id, String, api_name: :resourceId, nil?: true

        # @!attribute timestamp
        #   Timestamp
        #
        #   @return [Time, nil]
        optional :timestamp, Time

        # @!method initialize(customer_id:, event_name:, idempotency_key:, dimensions: nil, resource_id: nil, timestamp: nil)
        #   Raw usage event
        #
        #   @param customer_id [String] Customer id
        #
        #   @param event_name [String] The name of the usage event
        #
        #   @param idempotency_key [String] Idempotency key
        #
        #   @param dimensions [Hash{Symbol=>String, Float, Boolean}] Dimensions associated with the usage event
        #
        #   @param resource_id [String, nil] Resource id
        #
        #   @param timestamp [Time] Timestamp

        module Dimension
          extend Stigg::Internal::Type::Union

          variant String

          variant Float

          variant Stigg::Internal::Type::Boolean

          # @!method self.variants
          #   @return [Array(String, Float, Boolean)]
        end
      end
    end
  end
end
