# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Credits
        class Reservations
          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Credits::ReservationReleaseParams} for more details.
          #
          # Releases a credit reservation, consuming the given amount and returning the rest
          # of the held credits to the balance. Retry a failed release with the same
          # reservation ID; it is applied once.
          #
          # @overload release(reservation_id, consumed_amount:, currency_id:, customer_id:, resource_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param reservation_id [String] Path param: The client-provided reservation ID
          #
          # @param consumed_amount [Float] Body param: The amount of credits to consume at release. Up to the reserved amou
          #
          # @param currency_id [String] Body param: The credit currency of the reservation
          #
          # @param customer_id [String] Body param: The customer the reservation was made for
          #
          # @param resource_id [String] Body param: The resource the reservation was made for, if any
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::ReservationReleaseResponse]
          #
          # @see Stigg::Models::V1::Credits::ReservationReleaseParams
          def release(reservation_id, params)
            parsed, options = Stigg::V1::Credits::ReservationReleaseParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :post,
              path: ["api/v1/credits/reservations/%1$s/release", reservation_id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Stigg::Models::V1::Credits::ReservationReleaseResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Stigg::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
