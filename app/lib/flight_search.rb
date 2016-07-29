class FlightSearch
	attr_accessor :from, :to, :dateFrom, :dateTo, :currency, :maxPrice, :flightType, :sort

	def initialize
		@flightType = 'oneway'
		@currency = 'CZK'
		@sort = 'quality'
	end

	def to_params
		{v: 2, flyFrom: from, to: to, dateFrom: dateFrom, dateTo: dateTo, curr: currency, price_to: maxPrice, typeFlight: flightType, limit: 20, sort: sort}
	end
end