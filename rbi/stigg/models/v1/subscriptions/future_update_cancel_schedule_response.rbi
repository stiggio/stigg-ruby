# typed: strong

module Stigg
  module Models
    module V1
      module Subscriptions
        class FutureUpdateCancelScheduleResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleResponse,
                Stigg::Internal::AnyHash
              )
            end

          sig do
            returns(
              Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Subscriptions::FutureUpdateCancelScheduleResponse::Data,
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
