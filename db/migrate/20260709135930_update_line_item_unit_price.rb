class UpdateLineItemUnitPrice < ActiveRecord::Migration[8.1]
  def up
  LineItem.find_each do |line|
    line.update!(unit_price: line.product.price)
  end
end

def down
end
end