# typed: strong

module Stigg
  module Resources
    class V1
      class Customers
        class Usage
          # Perform retrieval on a Usage history
          sig do
            params(
              feature_id: String,
              customer_id: String,
              start_date: Time,
              end_date: Time,
              group_by: String,
              resource_id: T.nilable(String),
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Customers::UsageRetrieveResponse)
          end
          def retrieve(
            # Path param: Feature id
            feature_id,
            # Path param: Customer id
            customer_id:,
            # Query param: The start date of the range
            start_date:,
            # Query param: The end date of the range
            end_date: nil,
            # Query param:
            group_by: nil,
            # Query param: Resource id
            resource_id: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Stigg::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
