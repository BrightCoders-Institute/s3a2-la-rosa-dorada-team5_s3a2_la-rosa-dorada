# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../app/items/items_generation'
require_relative './standard_item_test'

# Class to test Gilded Rose Backstage items general behavior.
class BackstageItemTest < StandardItemTest
  TEST_ITEM_NAME = 'Backstage passes'

  private

  def test_item_name
    TEST_ITEM_NAME
  end

  public

  def test_quality_updates
    check_items_scenarios([[30, 50, 50], [30, 10, 11], [10, 10, 12], [5, 10, 13], [0, 50, 0],
                           [0, 30, 0], [0, 2, 0]])
  end
end
