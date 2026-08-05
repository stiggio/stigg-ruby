# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Contracts#update
      class ContractUpdateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute activation_end_date
        #   New activation end date
        #
        #   @return [Time, nil]
        optional :activation_end_date, Time, api_name: :activationEndDate

        # @!attribute activation_start_date
        #   New activation start date
        #
        #   @return [Time, nil]
        optional :activation_start_date, Time, api_name: :activationStartDate

        # @!attribute name
        #   New contract name
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute po_number
        #   New purchase-order number
        #
        #   @return [String, nil]
        optional :po_number, String, api_name: :poNumber, nil?: true

        # @!attribute setup_billing
        #   Enable billing on a provision-access-only contract by creating a billing
        #   contract in the connected billing provider. Only takes effect when true and the
        #   contract has no billing yet; omitting it leaves billing unchanged. Billing is
        #   never removed by an update.
        #
        #   @return [Boolean, nil]
        optional :setup_billing, Stigg::Internal::Type::Boolean, api_name: :setupBilling

        # @!attribute subscription_ids
        #   When provided, replaces the set of subscriptions linked to the contract
        #   (subscription ref IDs)
        #
        #   @return [Array<String>, nil]
        optional :subscription_ids, Stigg::Internal::Type::ArrayOf[String], api_name: :subscriptionIds

        # @!attribute x_account_id
        #
        #   @return [String, nil]
        optional :x_account_id, String

        # @!attribute x_environment_id
        #
        #   @return [String, nil]
        optional :x_environment_id, String

        # @!method initialize(id:, activation_end_date: nil, activation_start_date: nil, name: nil, po_number: nil, setup_billing: nil, subscription_ids: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::ContractUpdateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param activation_end_date [Time] New activation end date
        #
        #   @param activation_start_date [Time] New activation start date
        #
        #   @param name [String, nil] New contract name
        #
        #   @param po_number [String, nil] New purchase-order number
        #
        #   @param setup_billing [Boolean] Enable billing on a provision-access-only contract by creating a billing contrac
        #
        #   @param subscription_ids [Array<String>] When provided, replaces the set of subscriptions linked to the contract (subscri
        #
        #   @param x_account_id [String]
        #
        #   @param x_environment_id [String]
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
