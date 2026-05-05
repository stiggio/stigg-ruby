# frozen_string_literal: true

module Stigg
  module Resources
    class Internal
      # @return [Stigg::Resources::Internal::Beta]
      attr_reader :beta

      # @api private
      #
      # @param client [Stigg::Client]
      def initialize(client:)
        @client = client
        @beta = Stigg::Resources::Internal::Beta.new(client: client)
      end
    end
  end
end
