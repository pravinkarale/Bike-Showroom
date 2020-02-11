class CartsController < ApplicationController

  def create
  	if current_user.present?
  		@cart = current_cart(current_user)
  		if @cart.cart_items.find_by_two_wheeler_id(params[:bike_id]).blank?
  			@cart_items = @cart.cart_items.new(two_wheeler_id: params[:bike_id])
  			if @cart_items.save
  				@message = "Item Added Successfully"
  			end
  		else
  			@message = "Item already present"
  		end
  		respond_to do |format|
  			format.js{}
  		end
  	else
  		redirect_to :user_sign_in_path, flash[:notice] = 'Please login first'
  	end
  end
end
