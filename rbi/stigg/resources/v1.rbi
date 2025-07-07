# typed: strong

module Stigg
  module Resources
    class V1
      sig { returns(Stigg::Resources::V1::Permissions) }
      attr_reader :permissions

      # Get a single customer by id
      sig do
        params(
          ref_id: String,
          x_api_key: String,
          x_environment_id: String,
          request_options: Stigg::RequestOptions::OrHash
        ).returns(Stigg::Models::V1RetrieveCustomerResponse)
      end
      def retrieve_customer(
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
