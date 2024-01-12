# frozen_string_literal: true

require_relative './standard_item'

# Class to specify Aged Brie item properties.
class AgedBrieItem < StandardItem
  def initialize(name, sell_in, quality)
    super
    @name = 'Aged Brie'
  end

  protected

  def update_quality
    # The max quality value should be 50.
    @quality = [@quality + 1, 50].min
  end
end
