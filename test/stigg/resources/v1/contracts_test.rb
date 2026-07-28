# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::ContractsTest < Stigg::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.contracts.create(customer_id: "customerId", subscriptions: [{}])

    assert_pattern do
      response => Stigg::Models::V1::ContractCreateResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::ContractCreateResponse::Data
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @stigg.v1.contracts.retrieve("x")

    assert_pattern do
      response => Stigg::Models::V1::ContractRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::ContractRetrieveResponse::Data
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @stigg.v1.contracts.update("x")

    assert_pattern do
      response => Stigg::Models::V1::ContractUpdateResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::ContractUpdateResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.v1.contracts.list

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::ContractListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        activation_end_date: Time | nil,
        activation_start_date: Time | nil,
        billing_id: String | nil,
        contract_id: String,
        created_at: Time | nil,
        customer_external_id: String | nil,
        external_id: String,
        latest_invoice: Stigg::Models::V1::ContractListResponse::LatestInvoice | nil,
        name: String | nil,
        next_invoice: Stigg::Models::V1::ContractListResponse::NextInvoice | nil,
        po_number: String | nil,
        ref_id: String | nil,
        state: Stigg::Models::V1::ContractListResponse::State,
        subscriptions: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::ContractListResponse::Subscription])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @stigg.v1.contracts.delete("x")

    assert_pattern do
      response => Stigg::Models::V1::ContractDeleteResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::ContractDeleteResponse::Data
      }
    end
  end
end
