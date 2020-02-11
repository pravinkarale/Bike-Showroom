class HomesController < ApplicationController
  def index
  	@two_wheeler = TwoWheeler.includes(:photos)
  end
end
