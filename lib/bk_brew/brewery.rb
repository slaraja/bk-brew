class Brewery

    attr_accessor :name, :brewery_type, :address, :phone, :website_url

    @@all = [] #access objects in other classes

    #change to mass assignment later
    def initialize(title, type, street, phone_num, web_link)
        @name = title
        @brewery_type = type
        @address = street
        @phone = phone_num
        @website_url = web_link
        #iterate and acess elements from the class
        @@all << self #maybe build a save method?
    end 

    def self.all
        @@all
    end 

    def self.find(id)
        self.all[id-1]
    end

end
