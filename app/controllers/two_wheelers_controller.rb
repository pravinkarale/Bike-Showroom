class TwoWheelersController < ApplicationController
	def index
		@two_wheeler = TwoWheeler.includes(:photos)
	end

	def new
		@two_wheeler = TwoWheeler.new
	end

	def create
		@two_wheeler = TwoWheeler.new(two_wheeler_params)
		if @two_wheeler.save
			redirect_to root_path, notice: "two_wheeler added successfully"
		else
			render :new
		end
	end

	def two_wheeler_params
		params.require(:two_wheeler).permit(:title, :description, :specification, :price)
	end
end
