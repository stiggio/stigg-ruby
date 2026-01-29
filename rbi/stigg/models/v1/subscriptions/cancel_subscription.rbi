# typed: strong

module Stigg
  module Models
    module V1
      CancelSubscription = Subscriptions::CancelSubscription

      module Subscriptions
        class CancelSubscription < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Subscriptions::CancelSubscription,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(Stigg::V1::Subscriptions::CancelSubscription::Data) }
          attr_reader :data

          sig do
            params(
              data: Stigg::V1::Subscriptions::CancelSubscription::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data: Stigg::V1::Subscriptions::CancelSubscription::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              { data: Stigg::V1::Subscriptions::CancelSubscription::Data }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Subscriptions::CancelSubscription::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # Subscription ID
            sig { returns(String) }
            attr_accessor :id

            sig { params(id: String).returns(T.attached_class) }
            def self.new(
              # Subscription ID
              id:
            )
            end

            sig { override.returns({ id: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
