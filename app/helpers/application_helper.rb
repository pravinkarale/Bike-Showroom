module ApplicationHelper
	def bike_dashboard_img(bike)
		if bike.photos.present?
	    image_tag bike.photos.first.try(:image_url)
	  else
	    image_tag 'default_bike.png'
	  end
	end
end
