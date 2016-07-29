class Kiwi
	API_URL = 'https://api.skypicker.com/'
	def flights
		get :flights
	end

	def search(search)
		get :flights, search.to_params
	end

	private

	def get(resource, params = {})
		p params
		begin
			JSON.parse(RestClient.get("#{API_URL}#{resource}", params: params).body)
		rescue => e
			p e.response.body
		end
	end
end