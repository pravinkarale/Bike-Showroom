class CartItem < ApplicationRecord
	belongs_to :cart
	belongs_to :user
	belongs_to :two_wheeler
end
