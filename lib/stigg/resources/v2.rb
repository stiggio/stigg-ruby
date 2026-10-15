# frozen_string_literal: true

module Stigg
  module Resources
    class V2
      # Operations related to usage & metering
      # @return [Stigg::Resources::V2::Usage]
      attr_reader :usage

      # @api private
      #
      # @param client [Stigg::Client]
      def initialize(client:)
        @client = client
        @usage = Stigg::Resources::V2::Usage.new(client: client)
      end
    end
  end
end
