# typed: strong

module Stigg
  module Resources
    class V1
      class Customers
        sig { returns(Stigg::Resources::V1::Customers::SubCustomer) }
        attr_reader :sub_customer

        # Get a single customer by id
        sig do
          params(
            ref_id: String,
            x_api_key: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::CustomerRetrieveResponse)
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
