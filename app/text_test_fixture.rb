# frozen_string_literal: true

# !/usr/bin/ruby -w

require_relative './gilded_rose'
require_relative './items/items_generation'

items = [
  ItemsGeneration.create_item('5+ Dexterity Vest', 10, 20),
  ItemsGeneration.create_item('+5 Dexterity Vest', 0, 20),
  ItemsGeneration.create_item('Aged Brie', 2, 0),
  ItemsGeneration.create_item('Elixir of the Mongoose', 5, 7),
  ItemsGeneration.create_item('Sulfuras', 0, 80),
  ItemsGeneration.create_item('Sulfuras', -10, 20),
  ItemsGeneration.create_item('Backstage passes', 15, 20),
  ItemsGeneration.create_item('Backstage passes', 10, 49),
  ItemsGeneration.create_item('Backstage passes', 5, 49),
  ItemsGeneration.create_item('Backstage passes', 0, 49),
  ItemsGeneration.create_item('Conjured', 3, 6),
  ItemsGeneration.create_item('Conjured', 0, 6)
]
days = !ARGV.empty? ? ARGV[0].to_i + 1 : 2

gilded_rose = GildedRose.new(items)
(0...days).each do |day|
  puts "-------- Day #{day} --------"
  puts 'name, sellIn, quality'

  items.each do |item|
    puts item
  end

  puts ''
  gilded_rose.update_quality
end
