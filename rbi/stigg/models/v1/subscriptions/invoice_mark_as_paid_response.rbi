# typed: strong

module Stigg
  module Models
    module V1
      module Subscriptions
        class InvoiceMarkAsPaidResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Result of marking a subscription invoice as paid.
          sig do
            returns(
              Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Result of marking a subscription invoice as paid.
            data:
          )
          end

          sig do
            override.returns(
              {
                data:
                  Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # The subscription ID whose invoice was marked as paid
            sig { returns(String) }
            attr_accessor :id

            # Result of marking a subscription invoice as paid.
            sig { params(id: String).returns(T.attached_class) }
            def self.new(
              # The subscription ID whose invoice was marked as paid
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
