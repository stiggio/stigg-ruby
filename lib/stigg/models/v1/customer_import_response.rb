# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#import
      class CustomerImportResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #   List of newly created customer IDs from the import operation.
        #
        #   @return [Stigg::Models::V1::CustomerImportResponse::Data]
        required :data, -> { Stigg::Models::V1::CustomerImportResponse::Data }

        # @!method initialize(data:)
        #   Response object
        #
        #   @param data [Stigg::Models::V1::CustomerImportResponse::Data] List of newly created customer IDs from the import operation.

        # @see Stigg::Models::V1::CustomerImportResponse#data
        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute new_customers
          #   Customer IDs created during import
          #
          #   @return [Array<String>]
          required :new_customers, Stigg::Internal::Type::ArrayOf[String], api_name: :newCustomers

          # @!method initialize(new_customers:)
          #   List of newly created customer IDs from the import operation.
          #
          #   @param new_customers [Array<String>] Customer IDs created during import
        end
      end
    end
  end
end
