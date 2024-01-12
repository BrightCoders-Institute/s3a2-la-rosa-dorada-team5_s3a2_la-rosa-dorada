# frozen_string_literal: true

require_relative './sulfuras_item'
require_relative './backstage_item'
require_relative './aged_brie_item'
require_relative './conjured_item'
require_relative './standard_item'

# Module to control items generation.
module ItemsGeneration
  SULFURAS_ITEM = 'Sulfuras'
  BACKSTAGE_ITEM = 'Backstage passes'
  AGED_BRIE_ITEM = 'Aged Brie'
  CONJURED_ITEM = 'Conjured'
  SPECIAL_ITEMS_MAP = { SULFURAS_ITEM.dup.to_sym => SulfurasItem,
                        BACKSTAGE_ITEM.dup.to_sym => BackstageItem,
                        AGED_BRIE_ITEM.dup.to_sym => AgedBrieItem,
                        CONJURED_ITEM.dup.to_sym => ConjuredItem }.freeze

  def self.create_item(name, sell_in, quality)
    item_name_symbol = name.to_sym
    if SPECIAL_ITEMS_MAP.key?(item_name_symbol)
      SPECIAL_ITEMS_MAP[item_name_symbol].new(name, sell_in, quality)
    else
      StandardItem.new(name, sell_in, quality)
    end
  end
end
