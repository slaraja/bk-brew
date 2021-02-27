class Brewery

    attr_accessor :name, :brewery_type, :address, :phone, :website

    @@all = [] #access objects in other classes

    #change to mass assignment later
    def initialize(title, type, street, phone_num, web_link)
        @name = title
        @brewery_type = type
        @address = street
        @phone = phone_num
        @website = web_link
        #iterate and acess elements from the class
        @@all << self #maybe build a save method?
    end 

    def self.all
        @@all
    end 

    # def self.find_by_num(num)
    #     @@all.find()
    # end 

    def self.get_breweries

    end 


end
