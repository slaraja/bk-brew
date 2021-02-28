#sole purpose is to access remote data
class API

    def self.list_breweries
        url = 'https://api.openbrewerydb.org/breweries?by_city=brooklyn'
        #get the data
        response = HTTParty.get(url)
        #create objects from the data
        response.each do |hash| 
        Brewery.new(
            hash['name'],
            hash['brewery_type'],
            hash['address'],
            hash['phone'],
            hash['website_url'],
        ) 
        end 
    end 

end 
