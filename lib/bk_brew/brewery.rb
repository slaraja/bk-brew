class Brewery

    attr_accessor :name, :brewery_type, :street, :phone, :website_url

    @@all = [] 

    def initialize(title, type, address, phone_num, web_link)
        @name = title
        @brewery_type = type
        @street = address
        @phone = phone_num
        @website_url = web_link
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def self.find(id)
        self.all[id-1]
    end

    def self.list_breweries
       self.all.each.with_index(1) do |brewery, i|
            puts "#{i}. #{brewery.name}"
       end
    end 
    
end
