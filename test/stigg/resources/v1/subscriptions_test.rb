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
      response => Stigg::Models::V1::SubscriptionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionListResponse::Data]),
        pagination: Stigg::Models::V1::SubscriptionListResponse::Pagination
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
