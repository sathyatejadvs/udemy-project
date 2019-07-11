module PortfoliosHelper

	def image_generator(height: , width:)
		"http://placehold.it/#{height} x #{width}"
	end	

	def portfolio_image img, type
		if img
			img
		elsif type =='thumb'
			image_generator(height: 350 , width: 200)
		else type == 'main'
			image_generator(height: 600 , width: 400)
		end
	end
end
