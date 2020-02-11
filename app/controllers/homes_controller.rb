class HomesController < ApplicationController
  def index
  	@two_wheelers = TwoWheeler.includes(:photos)
  end
end
