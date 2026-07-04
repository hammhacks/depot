class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
end

## Great rule of thumb--use belongs_to when columns whose values consit of ID values for another table
## (ie foreign keys), the model should have a belongs_to for each