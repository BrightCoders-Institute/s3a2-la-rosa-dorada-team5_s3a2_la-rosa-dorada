# frozen_string_literal: true

require_relative './standard_item'

# Class to specify Conjured item properties.
class ConjuredItem < StandardItem
  def initialize(name, sell_in, quality)
    super
    @name = 'Conjured'
  end

  private

  def update_quality
    # The min quality value should be 0.
    @quality = [@quality - (sell_in_has_expired? ? 4 : 2), 0].max
  end
end
