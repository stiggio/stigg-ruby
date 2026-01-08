# typed: strong

module Stigg
  module Models
    module V1
      module Subscriptions
        class FutureUpdateCancelPendingPaymentResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentResponse,
                Stigg::Internal::AnyHash
              )
            end

          sig do
            returns(
              Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Subscriptions::FutureUpdateCancelPendingPaymentResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # external id of the canceled future update subscription
            sig { returns(String) }
            attr_accessor :id

            sig { params(id: String).returns(T.attached_class) }
            def self.new(
              # external id of the canceled future update subscription
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
