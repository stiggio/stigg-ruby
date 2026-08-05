# frozen_string_literal: true

module Stigg
  module Resources
    class V1Beta
      class Customers
        # @return [Stigg::Resources::V1Beta::Customers::Entitlements]
        attr_reader :entitlements

        # @return [Stigg::Resources::V1Beta::Customers::Entities]
        attr_reader :entities

        # @return [Stigg::Resources::V1Beta::Customers::Assignments]
        attr_reader :assignments

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
          @entitlements = Stigg::Resources::V1Beta::Customers::Entitlements.new(client: client)
          @entities = Stigg::Resources::V1Beta::Customers::Entities.new(client: client)
          @assignments = Stigg::Resources::V1Beta::Customers::Assignments.new(client: client)
        end
      end
    end
  end
end
