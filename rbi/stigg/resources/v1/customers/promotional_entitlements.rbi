# typed: strong

module Stigg
  module Resources
    class V1
      class Customers
        class PromotionalEntitlements
          # @api private
          sig { params(client: Stigg::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
