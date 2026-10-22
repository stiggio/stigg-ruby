# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Credits
        # @see Stigg::Resources::V1::Credits::Reservations#release
        class ReservationReleaseParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute reservation_id
          #
          #   @return [String]
          required :reservation_id, String

          # @!attribute consumed_amount
          #   The amount of credits to consume at release. Up to the reserved amount is
          #   charged to the credits that backed the reservation; the rest returns to the
          #   balance, and any amount above the reservation is consumed normally.
          #
          #   @return [Float]
          required :consumed_amount, Float, api_name: :consumedAmount

          # @!attribute currency_id
          #   The credit currency of the reservation
          #
          #   @return [String]
          required :currency_id, String, api_name: :currencyId

          # @!attribute customer_id
          #   The customer the reservation was made for
          #
          #   @return [String]
          required :customer_id, String, api_name: :customerId

          # @!attribute resource_id
          #   The resource the reservation was made for, if any
          #
          #   @return [String, nil]
          optional :resource_id, String, api_name: :resourceId

          # @!attribute x_account_id
          #
          #   @return [String, nil]
          optional :x_account_id, String

          # @!attribute x_environment_id
          #
          #   @return [String, nil]
          optional :x_environment_id, String

          # @!method initialize(reservation_id:, consumed_amount:, currency_id:, customer_id:, resource_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::Credits::ReservationReleaseParams} for more details.
          #
          #   @param reservation_id [String]
          #
          #   @param consumed_amount [Float] The amount of credits to consume at release. Up to the reserved amount is charge
          #
          #   @param currency_id [String] The credit currency of the reservation
          #
          #   @param customer_id [String] The customer the reservation was made for
          #
          #   @param resource_id [String] The resource the reservation was made for, if any
          #
          #   @param x_account_id [String]
          #
          #   @param x_environment_id [String]
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
