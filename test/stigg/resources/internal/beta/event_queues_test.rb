# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::Internal::Beta::EventQueuesTest < Stigg::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @stigg.internal.beta.event_queues.retrieve("x")

    assert_pattern do
      response => Stigg::Models::Internal::Beta::EventQueueRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::Internal::Beta::EventQueueRetrieveResponse::Data
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @stigg.internal.beta.event_queues.update("x")

    assert_pattern do
      response => Stigg::Models::Internal::Beta::EventQueueUpdateResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::Internal::Beta::EventQueueUpdateResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.internal.beta.event_queues.list

    assert_pattern do
      response => Stigg::Models::Internal::Beta::EventQueueListResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::Internal::Beta::EventQueueListResponse::Data]),
        pagination: Stigg::Models::Internal::Beta::EventQueueListResponse::Pagination
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @stigg.internal.beta.event_queues.delete("x")

    assert_pattern do
      response => Stigg::Models::Internal::Beta::EventQueueDeleteResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::Internal::Beta::EventQueueDeleteResponse::Data
      }
    end
  end

  def test_provision_required_params
    skip("Mock server tests are disabled")

    response = @stigg.internal.beta.event_queues.provision(region: :"us-east-1")

    assert_pattern do
      response => Stigg::Models::Internal::Beta::EventQueueProvisionResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::Internal::Beta::EventQueueProvisionResponse::Data
      }
    end
  end
end
