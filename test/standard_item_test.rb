# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../app/items/items_generation'

# Class to test Gilded Rose standard items general behavior.
class StandardItemTest < Minitest::Test
  TEST_ITEM_NAME = 'Standard item'

  protected

  def test_item_name
    TEST_ITEM_NAME
  end

  def create_test_item(sell_in, quality)
    ItemsGeneration.create_item(test_item_name, sell_in, quality)
  end

  def assert_sell_in_update(sell_in, expected_number)
    test_item = create_test_item(sell_in, 0)
    test_item.send(:update_sell_in)
    assert_equal expected_number, test_item.sell_in
  end

  def assert_quality_update(sell_in, quality, expected_quality)
    test_item = create_test_item(sell_in, quality)
    test_item.send(:update_quality)
    assert_equal expected_quality, test_item.quality
  end

  def check_items_scenarios(scenarios_data_list)
    scenarios_data_list.each { |scenario| assert_quality_update(*scenario) }
  end

  public

  def test_sell_in_expiration
    assert create_test_item(0, 0).send(:sell_in_has_expired?)
    (1..10).each { |number| refute create_test_item(number, 0).send(:sell_in_has_expired?) }
  end

  def test_sell_in_updates
    (1..10).each { |number| assert_sell_in_update(number, number - 1) }
    (-10..0).each { |number| assert_sell_in_update(number, 0) }
  end

  def test_quality_updates
    check_items_scenarios([[1, 10, 9], [0, 10, 8], [1, 50, 49], [1, 0, 0], [0, 0, 0]])
  end
end
