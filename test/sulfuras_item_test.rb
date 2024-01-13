# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../app/items/items_generation'
require_relative './standard_item_test'

# Class to test Gilded Rose Sulfura items general behavior.
class SulfuraItemTest < StandardItemTest
  TEST_ITEM_NAME = 'Sulfuras'

  private

  def test_item_name
    TEST_ITEM_NAME
  end

  public

  def test_sell_in_expiration
    10.times { |number| assert create_test_item(number, 0).send(:sell_in_has_expired?) }
  end

  def test_sell_in_updates
    (-10..10).each { |number| assert_sell_in_update(number, 0) }
  end

  def test_quality_updates
    check_items_scenarios([[30, 50, 80], [30, 10, 80], [10, 10, 80], [5, 10, 80], [0, 50, 80],
                           [0, 30, 80], [0, 2, 80]])
  end
end
