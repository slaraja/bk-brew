#handles all interaction with the user
#middleman between api and brewery
#only class that has any puts or gets statements

class CLI

    def run
        puts "Welcome to the Brooklyn Brew app!"
        get_breweries
    end 

    def get_breweries
        API.get_breweries
        puts "Here is a list of breweries in Brooklyn"
        puts "1. Brooklyn Brewery"
        puts "2. Folksbier"
        puts "3. Threes"
        brewery_choice
    end 

    def brewery_choice
        puts "Please enter a number to learn more about the brewery."
        choice = gets.strip
        brewery_details
    end 

    def brewery_details
        puts "Here is more information about the brewery you chose."
        #puts out more information
        breweries_more
    end 


    def breweries_more
        puts "Would you like to learn about another brewery? Type Y or N. Choosing N will exit the program."
        # if Y
        #     get_breweries
        #     brewery_choice
        # elsif N
        #     exit
        # else user types anything else
        #     puts "Oops! You mistyped something. Type Y if you'd like to learn about another brewery or N to exit"
        # end 
    end 

end 