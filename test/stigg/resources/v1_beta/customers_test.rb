# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1Beta::CustomersTest < Stigg::Test::ResourceTest
  def test_retrieve_governance
    skip("Mock server tests are disabled")

    response = @stigg.v1_beta.customers.retrieve_governance("id")

    assert_pattern do
      response => Stigg::Models::V1Beta::CustomerRetrieveGovernanceResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1Beta::CustomerRetrieveGovernanceResponse::Data]),
        pagination: Stigg::Models::V1Beta::CustomerRetrieveGovernanceResponse::Pagination
      }
    end
  end
end
