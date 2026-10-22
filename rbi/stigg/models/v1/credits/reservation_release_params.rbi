# typed: strong

module Stigg
  module Models
    module V1
      module Credits
        class ReservationReleaseParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Credits::ReservationReleaseParams,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :reservation_id

          # The amount of credits to consume at release. Up to the reserved amount is
          # charged to the credits that backed the reservation; the rest returns to the
          # balance, and any amount above the reservation is consumed normally.
          sig { returns(Float) }
          attr_accessor :consumed_amount

          # The credit currency of the reservation
          sig { returns(String) }
          attr_accessor :currency_id

          # The customer the reservation was made for
          sig { returns(String) }
          attr_accessor :customer_id

          # The resource the reservation was made for, if any
          sig { returns(T.nilable(String)) }
          attr_reader :resource_id

          sig { params(resource_id: String).void }
          attr_writer :resource_id

          sig { returns(T.nilable(String)) }
          attr_reader :x_account_id

          sig { params(x_account_id: String).void }
          attr_writer :x_account_id

          sig { returns(T.nilable(String)) }
          attr_reader :x_environment_id

          sig { params(x_environment_id: String).void }
          attr_writer :x_environment_id

          sig do
            params(
              reservation_id: String,
              consumed_amount: Float,
              currency_id: String,
              customer_id: String,
              resource_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            reservation_id:,
            # The amount of credits to consume at release. Up to the reserved amount is
            # charged to the credits that backed the reservation; the rest returns to the
            # balance, and any amount above the reservation is consumed normally.
            consumed_amount:,
            # The credit currency of the reservation
            currency_id:,
            # The customer the reservation was made for
            customer_id:,
            # The resource the reservation was made for, if any
            resource_id: nil,
            x_account_id: nil,
            x_environment_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                reservation_id: String,
                consumed_amount: Float,
                currency_id: String,
                customer_id: String,
                resource_id: String,
                x_account_id: String,
                x_environment_id: String,
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
