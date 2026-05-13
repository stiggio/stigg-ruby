# frozen_string_literal: true

require_relative "../../../../test_helper"

class Stigg::Test::Resources::V1::Events::Credits::GrantsTest < Stigg::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1.events.credits.grants.create(
        amount: 0,
        currency_id: "currencyId",
        customer_id: "customerId",
        display_name: "displayName",
        grant_type: :PAID
      )

    assert_pattern do
      response => Stigg::V1::Events::Credits::CreditGrantResponse
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Events::Credits::CreditGrantResponse::Data
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.credits.grants.list(customer_id: "customerId")

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::Events::Credits::GrantListResponse
    end

    assert_pattern do
      row => {
        id: String,
        amount: Float,
        comment: String | nil,
        consumed_amount: Float,
        cost: Stigg::Models::V1::Events::Credits::GrantListResponse::Cost,
        created_at: Time,
        currency_id: String,
        customer_id: String,
        display_name: String,
        effective_at: Time,
        expire_at: Time | nil,
        grant_type: Stigg::Models::V1::Events::Credits::GrantListResponse::GrantType,
        invoice_id: String | nil,
        latest_invoice: Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice | nil,
        metadata: ^(Stigg::Internal::Type::HashOf[String]),
        payment_collection: Stigg::Models::V1::Events::Credits::GrantListResponse::PaymentCollection,
        priority: Float,
        resource_id: String | nil,
        source_type: Stigg::Models::V1::Events::Credits::GrantListResponse::SourceType | nil,
        status: Stigg::Models::V1::Events::Credits::GrantListResponse::Status,
        updated_at: Time,
        voided_at: Time | nil
      }
    end
  end

  def test_void
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.credits.grants.void("x")

    assert_pattern do
      response => Stigg::V1::Events::Credits::CreditGrantResponse
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Events::Credits::CreditGrantResponse::Data
      }
    end
  end
end
