# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../app/items/items_generation'
require_relative './standard_item_test'

# Class to test Gilded Rose Aged Brie items general behavior.
class AgedBrieItemTest < StandardItemTest
  TEST_ITEM_NAME = 'Aged Brie'

  private

  def test_item_name
    TEST_ITEM_NAME
  end

  public

  def test_quality_updates
    check_items_scenarios([[1, 10, 11], [0, 10, 11], [1, 50, 50], [0, 50, 50], [0, 0, 1]])
  end
end
