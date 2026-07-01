# typed: strong

module Stigg
  module Models
    module V1
      module Credits
        class ConsumptionConsumeAsyncResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Credits::ConsumptionConsumeAsyncResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Confirmation that the credit consumptions were accepted for processing
          sig { returns(T.anything) }
          attr_accessor :data

          # Response object
          sig { params(data: T.anything).returns(T.attached_class) }
          def self.new(
            # Confirmation that the credit consumptions were accepted for processing
            data:
          )
          end

          sig { override.returns({ data: T.anything }) }
          def to_hash
          end
        end
      end
    end
  end
end
