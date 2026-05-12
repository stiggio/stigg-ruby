# typed: strong

module Stigg
  module Resources
    class V1
      class Credits
        class AutoRecharge
          # Retrieves the automatic recharge configuration for a customer and currency.
          # Returns default settings if no configuration exists.
          sig do
            params(
              currency_id: String,
              customer_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Credits::AutoRechargeGetAutoRechargeResponse
            )
          end
          def get_auto_recharge(
            # Filter by currency ID (required)
            currency_id:,
            # Filter by customer ID (required)
            customer_id:,
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
