# typed: strong

module Stigg
  module Models
    module V1
      module Subscriptions
        class UsageSyncUsageResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Subscriptions::UsageSyncUsageResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Result of triggering a subscription usage sync.
          sig do
            returns(
              Stigg::Models::V1::Subscriptions::UsageSyncUsageResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Subscriptions::UsageSyncUsageResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1::Subscriptions::UsageSyncUsageResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Result of triggering a subscription usage sync.
            data:
          )
          end

          sig do
            override.returns(
              {
                data:
                  Stigg::Models::V1::Subscriptions::UsageSyncUsageResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Subscriptions::UsageSyncUsageResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # Whether usage was synced to the billing provider
            sig { returns(T::Boolean) }
            attr_accessor :triggered

            # Result of triggering a subscription usage sync.
            sig { params(triggered: T::Boolean).returns(T.attached_class) }
            def self.new(
              # Whether usage was synced to the billing provider
              triggered:
            )
            end

            sig { override.returns({ triggered: T::Boolean }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
