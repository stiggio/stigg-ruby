# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Customers
        class Usage
          # Perform retrieval on a Usage history
          #
          # @overload retrieve(feature_id, customer_id:, start_date:, end_date: nil, group_by: nil, resource_id: nil, request_options: {})
          #
          # @param feature_id [String] Path param: Feature id
          #
          # @param customer_id [String] Path param: Customer id
          #
          # @param start_date [Time] Query param: The start date of the range
          #
          # @param end_date [Time] Query param: The end date of the range
          #
          # @param group_by [String] Query param:
          #
          # @param resource_id [String, nil] Query param: Resource id
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Customers::UsageRetrieveResponse]
          #
          # @see Stigg::Models::V1::Customers::UsageRetrieveParams
          def retrieve(feature_id, params)
            parsed, options = Stigg::V1::Customers::UsageRetrieveParams.dump_request(params)
            customer_id =
              parsed.delete(:customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["api/v1/customers/%1$s/usage/features/%2$s", customer_id, feature_id],
              query: parsed.transform_keys(
                start_date: "startDate",
                end_date: "endDate",
                group_by: "groupBy",
                resource_id: "resourceId"
              ),
              model: Stigg::Models::V1::Customers::UsageRetrieveResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Stigg::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
