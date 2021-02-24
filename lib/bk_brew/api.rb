#sole purpose is to access remote data


class API

    def self.get_breweries(url)
        url = 'https://api.openbrewerydb.org/breweries'
        response = HTTParty.get(url)
        response.parsed_response
    end

end 
