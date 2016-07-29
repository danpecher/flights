namespace :flights do
  desc "Check current flight prices"
  task check: :environment do
  	search = FlightSearch.new
  	search.from = 'prague_cz'
  	search.to = 'MTY'
  	search.dateFrom = '08/08/2016' # Time.now.strftime('%d/%m/%Y')
  	search.dateTo = '15/08/2016'
  	search.maxPrice = '25000'

  	result = Kiwi.new.search search

	FlightsMailer.overview(result['data']).deliver

	# console output
  	# result['data'].each do |flight|
  		# route = flight['route'].first['cityFrom'] + ' > ' + flight['route'].map {|r| r['cityTo']}.join(' > ')
  		# p "#{flight['conversion']['CZK']} CZK | #{route} | #{flight['fly_duration']} | #{Time.at(1471244700).to_datetime}"
  	# end
  end
end
