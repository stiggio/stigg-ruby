# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Subscriptions
        # @see Stigg::Resources::V1::Subscriptions::Invoice#mark_as_paid
        class InvoiceMarkAsPaidResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Result of marking a subscription invoice as paid.
          #
          #   @return [Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse::Data]
          required :data, -> { Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse::Data] Result of marking a subscription invoice as paid.

          # @see Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   The subscription ID whose invoice was marked as paid
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   Result of marking a subscription invoice as paid.
            #
            #   @param id [String] The subscription ID whose invoice was marked as paid
          end
        end
      end
    end
  end
end
