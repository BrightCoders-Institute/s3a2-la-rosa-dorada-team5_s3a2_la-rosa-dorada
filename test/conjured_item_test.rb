# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../app/items/items_generation'
require_relative './standard_item_test'

# Class to test Gilded Rose Conjured items general behavior.
class ConjuredItemTest < StandardItemTest
  TEST_ITEM_NAME = 'Conjured'

  private

  def test_item_name
    TEST_ITEM_NAME
  end

  public

  def test_quality_updates
    check_items_scenarios([[1, 10, 8], [0, 10, 6], [1, 50, 48], [1, 0, 0], [0, 0, 0]])
  end
end
