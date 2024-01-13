# frozen_string_literal: true

require_relative './standard_item'

# Class to specify Sulfuras item properties.
class SulfurasItem < StandardItem
  def initialize(name, sell_in, quality)
    super
    @name = 'Sulfuras'
    @sell_in = 0
    @quality = 80
  end

  private

  def update_quality; end

  public

  def update_item_data; end
end
