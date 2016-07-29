class FlightsMailer < ApplicationMailer
	def overview(flights)
		@flights = flights
		mail(to: 'dan.pecher@gmail.com', subject: '✈️ Current flights prices')
	end

	def cheapest(flights)
		@flights = flights
		mail(to: 'dan.pecher@gmail.com', subject: '✈️ Current cheapest flight')
	end
end
