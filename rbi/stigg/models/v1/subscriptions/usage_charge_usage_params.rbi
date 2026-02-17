# typed: strong

module Stigg
  module Models
    module V1
      module Subscriptions
        class UsageChargeUsageParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Subscriptions::UsageChargeUsageParams,
                Stigg::Internal::AnyHash
              )
            end

          # Cutoff date for usage calculation. If not provided, the current time is used.
          sig { returns(T.nilable(Time)) }
          attr_reader :until_date

          sig { params(until_date: Time).void }
          attr_writer :until_date

          sig do
            params(
              until_date: Time,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Cutoff date for usage calculation. If not provided, the current time is used.
            until_date: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              { until_date: Time, request_options: Stigg::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
