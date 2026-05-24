# typed: strong

module Stigg
  module Resources
    class V1Beta
      class Customers
        sig { returns(Stigg::Resources::V1Beta::Customers::Entitlements) }
        attr_reader :entitlements

        # @api private
        sig { params(client: Stigg::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
