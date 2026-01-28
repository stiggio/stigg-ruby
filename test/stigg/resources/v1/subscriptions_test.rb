# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::SubscriptionsTest < Stigg::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @stigg.v1.subscriptions.create(customer_id: "customerId", plan_id: "planId")

    assert_pattern do
      response => Stigg::Models::V1::SubscriptionCreateResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::SubscriptionCreateResponse::Data
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @stigg.v1.subscriptions.retrieve("x")

    assert_pattern do
      response => Stigg::Models::V1::SubscriptionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::SubscriptionRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @stigg.v1.subscriptions.list

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::SubscriptionListResponse
    end

    assert_pattern do
      row => {
        id: String,
        billing_id: String | nil,
        created_at: Time,
        customer_id: String,
        payment_collection: Stigg::Models::V1::SubscriptionListResponse::PaymentCollection,
        plan_id: String,
        pricing_type: Stigg::Models::V1::SubscriptionListResponse::PricingType,
        start_date: Time,
        status: Stigg::Models::V1::SubscriptionListResponse::Status,
        cancellation_date: Time | nil,
        cancel_reason: Stigg::Models::V1::SubscriptionListResponse::CancelReason | nil,
        current_billing_period_end: Time | nil,
        current_billing_period_start: Time | nil,
        effective_end_date: Time | nil,
        end_date: Time | nil,
        metadata: ^(Stigg::Internal::Type::HashOf[String]) | nil,
        paying_customer_id: String | nil,
        payment_collection_method: Stigg::Models::V1::SubscriptionListResponse::PaymentCollectionMethod | nil,
        prices: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionListResponse::Price]) | nil,
        resource_id: String | nil,
        trial_end_date: Time | nil
      }
    end
  end

  def test_delegate_required_params
    skip("Prism tests are disabled")

    response = @stigg.v1.subscriptions.delegate("x", target_customer_id: "targetCustomerId")

    assert_pattern do
      response => Stigg::Models::V1::SubscriptionDelegateResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::SubscriptionDelegateResponse::Data
      }
    end
  end

  def test_migrate
    skip("Prism tests are disabled")

    response = @stigg.v1.subscriptions.migrate("x")

    assert_pattern do
      response => Stigg::Models::V1::SubscriptionMigrateResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::SubscriptionMigrateResponse::Data
      }
    end
  end

  def test_preview_required_params
    skip("Prism tests are disabled")

    response = @stigg.v1.subscriptions.preview(customer_id: "customerId", plan_id: "planId")

    assert_pattern do
      response => Stigg::Models::V1::SubscriptionPreviewResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::SubscriptionPreviewResponse::Data
      }
    end
  end

  def test_transfer_required_params
    skip("Prism tests are disabled")

    response = @stigg.v1.subscriptions.transfer("x", destination_resource_id: "destinationResourceId")

    assert_pattern do
      response => Stigg::Models::V1::SubscriptionTransferResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::SubscriptionTransferResponse::Data
      }
    end
  end
end
