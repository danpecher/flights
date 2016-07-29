class FlightSearch
	attr_accessor :from, :to, :dateFrom, :dateTo, :currency, :maxPrice, :flightType, :sort, :limit

	def initialize
		@flightType = 'oneway'
		@currency = 'CZK'
		@sort = 'quality'
		@limit = 20
	end

	def to_params
		{v: 2, flyFrom: from, to: to, dateFrom: dateFrom, dateTo: dateTo, curr: currency, price_to: maxPrice, typeFlight: flightType, limit: limit, sort: sort}
	end
end