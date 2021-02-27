#handles all interaction with the user
#middleman between api and brewery
#only class that has any puts or gets statements

class CLI

    def run
        puts "Welcome to the Brooklyn Brew app!"
        list_breweries
        brewery_choice
        # self.get_breweries
    end 

    def list_breweries
        API.get_breweries
        all.each.with_index(1) do |brewery, i|
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
            puts "Please enter a number to learn more about the brewery."
            puts "Enter brews to see the list of breweries again."
            puts "Enter exit to end the program."
            choice = gets.strip.downcase
        if input == "brews"
            list_breweries
        elsif input.to_i > 0
            if brewery = self.find(input.to_i)
                brewery_details(brewery) #need argument?
            end 
        end 
    #     choice = gets.strip #gets.chomp?

    end 

    def brewery_details
        puts "Here is more information about the brewery you chose."
    end 


    # def breweries_more
    #     puts "Would you like to learn about another brewery? Type Y or N. Choosing N will exit the program."
    #     # if Y
    #     #     get_breweries
    #     #     brewery_choice
    #     # elsif N
    #     #     exit
    #     # else user types anything else
    #     #     puts "Oops! You mistyped something. Type Y if you'd like to learn about another brewery or N to exit"
    #     # end 
    # end 

end 
end 