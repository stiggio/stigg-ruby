# frozen_string_literal: true

module Stigg
  module Resources
    class V1Beta
      # @return [Stigg::Resources::V1Beta::Customers]
      attr_reader :customers

      # @return [Stigg::Resources::V1Beta::EntityTypes]
      attr_reader :entity_types

      # @return [Stigg::Resources::V1Beta::Entities]
      attr_reader :entities

      # @api private
      #
      # @param client [Stigg::Client]
      def initialize(client:)
        @client = client
        @customers = Stigg::Resources::V1Beta::Customers.new(client: client)
        @entity_types = Stigg::Resources::V1Beta::EntityTypes.new(client: client)
        @entities = Stigg::Resources::V1Beta::Entities.new(client: client)
      end
    end
  end
end
