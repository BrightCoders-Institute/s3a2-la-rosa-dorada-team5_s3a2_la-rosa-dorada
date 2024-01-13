# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../app/items/items_generation'

# Class to test items generation general behavior.
class ItemsGenerationTest < Minitest::Test
  STANDARD_ITEMS_NAMES = ['Standard Item', 'Test Item', 'Random Item', 'Test String'].freeze

  private

  def create_test_item(item_name)
    ItemsGeneration.create_item(item_name, 0, 0)
  end

  def assert_item_class(classname, item)
    assert_kind_of classname, item
  end

  public

  def test_standard_items
    STANDARD_ITEMS_NAMES.each do |item_name|
      assert_item_class(StandardItem, create_test_item(item_name))
    end
  end

  def test_special_items
    ItemsGeneration::SPECIAL_ITEMS_MAP.each do |item_name, classname|
      assert_item_class(classname, create_test_item(item_name))
    end
  end
end
