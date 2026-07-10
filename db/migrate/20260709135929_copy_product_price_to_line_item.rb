class CopyProductPriceToLineItem < ActiveRecord::Migration[8.1]
  def copy_product_price_to_line_item
    Cart.all.each do |cart|
      cart.line_items.each do |line|
        line.unit_price = line.product_id.price
      end
    end
  end
end
