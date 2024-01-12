# frozen_string_literal: true

require_relative './item'

# Class to specify general item properties.
class StandardItem < Item
  def initialize(name, sell_in, quality)
    super
    @sell_in = [0, sell_in].max
    @quality = quality.clamp(0, 50)
  end

  protected

  def sell_in_has_expired?
    @sell_in <= 0
  end

  def update_sell_in
    # The min sell_in value should be 0.
    @sell_in = [@sell_in - 1, 0].max
  end

  def update_quality
    # The min quality value should be 0.
    @quality = [@quality - (sell_in_has_expired? ? 2 : 1), 0].max
  end

  public

  def update_item_data
    update_sell_in
    update_quality
  end
end
