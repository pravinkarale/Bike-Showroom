class TwoWheeler < ApplicationRecord
	has_one :cart
	has_many :cart_items
	has_many :photos

end
