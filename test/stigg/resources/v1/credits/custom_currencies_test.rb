# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Credits::CustomCurrenciesTest < Stigg::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.credits.custom_currencies.create(id: "id", display_name: "displayName")

    assert_pattern do
      response => Stigg::V1::Credits::CustomCurrency
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Credits::CustomCurrency::Data
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @stigg.v1.credits.custom_currencies.update("currencyId")

    assert_pattern do
      response => Stigg::V1::Credits::CustomCurrency
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Credits::CustomCurrency::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.v1.credits.custom_currencies.list

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::Credits::CustomCurrencyListResponse
    end

    assert_pattern do
      row => {
        id: String,
        archived_at: Time | nil,
        created_at: Time,
        description: String | nil,
        display_name: String,
        metadata: ^(Stigg::Internal::Type::HashOf[String]),
        symbol: String | nil,
        units: Stigg::Models::V1::Credits::CustomCurrencyListResponse::Units | nil,
        updated_at: Time
      }
    end
  end

  def test_archive
    skip("Mock server tests are disabled")

    response = @stigg.v1.credits.custom_currencies.archive("currencyId")

    assert_pattern do
      response => Stigg::V1::Credits::CustomCurrency
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Credits::CustomCurrency::Data
      }
    end
  end

  def test_list_associated_entities
    skip("Mock server tests are disabled")

    response = @stigg.v1.credits.custom_currencies.list_associated_entities("currencyId")

    assert_pattern do
      response => Stigg::Models::V1::Credits::CustomCurrencyListAssociatedEntitiesResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Credits::CustomCurrencyListAssociatedEntitiesResponse::Data])
      }
    end
  end

  def test_unarchive
    skip("Mock server tests are disabled")

    response = @stigg.v1.credits.custom_currencies.unarchive("currencyId")

    assert_pattern do
      response => Stigg::V1::Credits::CustomCurrency
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Credits::CustomCurrency::Data
      }
    end
  end
end
