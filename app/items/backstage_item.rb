# frozen_string_literal: true

require_relative './aged_brie_item'

# Class to specify Backstage item properties.
class BackstageItem < AgedBrieItem
  def initialize(name, sell_in, quality)
    super
    @name = 'Backstage passes'
  end

  private

  def calculate_quality_addition
    case @sell_in
    when 0
      -@quality
    when 1..5
      3
    when 6..10
      2
    else
      1
    end
  end

  def update_quality
    # The quality value should be between 0 and 50.
    @quality = (@quality + calculate_quality_addition).clamp(0, 50)
  end
end
