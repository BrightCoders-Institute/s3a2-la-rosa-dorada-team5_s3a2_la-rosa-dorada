# frozen_string_literal: true

# Class to specify Gilded Rose
# items modification logic control.
class GildedRose
  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each(&:update_item_data)
  end
end
