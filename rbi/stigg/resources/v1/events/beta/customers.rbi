# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class Beta
          class Customers
            sig do
              returns(
                Stigg::Resources::V1::Events::Beta::Customers::Entitlements
              )
            end
            attr_reader :entitlements

            sig do
              returns(Stigg::Resources::V1::Events::Beta::Customers::Entities)
            end
            attr_reader :entities

            sig do
              returns(
                Stigg::Resources::V1::Events::Beta::Customers::Assignments
              )
            end
            attr_reader :assignments

            # @api private
            sig { params(client: Stigg::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
