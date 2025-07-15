# typed: strong

module Stigg
  module Resources
    class V2
      class Customers
        class SubCustomer
          # Get a single customer by id
          sig do
            params(
              ref_id: String,
              x_api_key: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V2::Customers::SubCustomerRetrieveResponse)
          end
          def retrieve(
            ref_id,
            # API Key
            x_api_key:,
            x_environment_id:,
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
