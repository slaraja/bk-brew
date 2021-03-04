class API

    def self.list_breweries
        url = 'https://api.openbrewerydb.org/breweries?by_city=brooklyn'
        response = HTTParty.get(url)
        response.each do |hash| 
        Brewery.new(
            hash['name'],
            hash['brewery_type'],
            hash['street'],
            hash['phone'],
            hash['website_url'],
        ) 
        end 
    end 

end 
