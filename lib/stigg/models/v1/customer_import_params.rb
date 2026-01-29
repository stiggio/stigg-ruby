# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#import
      class CustomerImportParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute customers
        #   List of customer objects to import
        #
        #   @return [Array<Stigg::Models::V1::CustomerImportParams::Customer>]
        required :customers, -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::CustomerImportParams::Customer] }

        # @!method initialize(customers:, request_options: {})
        #   @param customers [Array<Stigg::Models::V1::CustomerImportParams::Customer>] List of customer objects to import
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        class Customer < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   Customer slug
          #
          #   @return [String]
          required :id, String

          # @!attribute email
          #   The email of the customer
          #
          #   @return [String, nil]
          required :email, String, nil?: true

          # @!attribute name
          #   The name of the customer
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute metadata
          #   Additional metadata
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, Stigg::Internal::Type::HashOf[String]

          # @!attribute payment_method_id
          #   Billing provider payment method id
          #
          #   @return [String, nil]
          optional :payment_method_id, String, api_name: :paymentMethodId

          # @!attribute updated_at
          #   Timestamp of when the record was last updated
          #
          #   @return [Time, nil]
          optional :updated_at, Time, api_name: :updatedAt

          # @!method initialize(id:, email:, name:, metadata: nil, payment_method_id: nil, updated_at: nil)
          #   @param id [String] Customer slug
          #
          #   @param email [String, nil] The email of the customer
          #
          #   @param name [String, nil] The name of the customer
          #
          #   @param metadata [Hash{Symbol=>String}] Additional metadata
          #
          #   @param payment_method_id [String] Billing provider payment method id
          #
          #   @param updated_at [Time] Timestamp of when the record was last updated
        end
      end
    end
  end
end
