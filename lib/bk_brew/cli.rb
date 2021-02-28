#handles all interaction with the user
#middleman between api and brewery
#only class that has any puts or gets statements

class CLI

    def run
        puts "Welcome to the Brooklyn Brew app!"
        puts "Here is a list of breweries in Brooklyn."
        puts ""
        list_breweries
        brewery_choice
    end 

    def list_breweries
        API.list_breweries
        Brewery.all.each.with_index(1) do |brewery, i|
            puts "#{i}. #{brewery.name}"
        end 
    end 
        
        # puts get_breweries
        # # breweries = JSON.parse(self.get_breweries)
        # # #puts out a list of breweries
        # breweries = get_breweries.new
        # puts breweries.get_breweries

    def brewery_choice
        list_breweries
        choice = nil
        while choice != "exit"
            puts ""
            puts "Please enter a number from 1-40 to learn more about a brewery."
            puts "Enter exit to end the program."
            choice = gets.strip.downcase
            choice.to_i > 0
            # self.find_by_num
            brewery_details(brewery)
        
    end 
        #     self.find_by_num
        #     brewery_details(brewery) 
        #     end 
        # if input == "brews"
        #     list_breweries
        # elsif input.to_i > 0
        #     self.find_by_num
        #     brewery_details(brewery) 
        #     end 
        # end 
    end 

    def brewery_details
        puts "Here is more information about the brewery you chose."
    end 

    def more_breweries
        puts "Enter brews to see the list of breweries again."
    end 

end 