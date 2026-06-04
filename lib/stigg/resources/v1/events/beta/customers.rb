# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class Beta
          class Customers
            # @return [Stigg::Resources::V1::Events::Beta::Customers::Entitlements]
            attr_reader :entitlements

            # @return [Stigg::Resources::V1::Events::Beta::Customers::Entities]
            attr_reader :entities

            # @return [Stigg::Resources::V1::Events::Beta::Customers::Assignments]
            attr_reader :assignments

            # @api private
            #
            # @param client [Stigg::Client]
            def initialize(client:)
              @client = client
              @entitlements = Stigg::Resources::V1::Events::Beta::Customers::Entitlements.new(client: client)
              @entities = Stigg::Resources::V1::Events::Beta::Customers::Entities.new(client: client)
              @assignments = Stigg::Resources::V1::Events::Beta::Customers::Assignments.new(client: client)
            end
          end
        end
      end
    end
  end
end
