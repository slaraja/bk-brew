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
        Brewery.list_breweries
    end 

    def brewery_choice
        puts ""
        puts "Please enter a number from 1-20 to learn more about a brewery."
        puts "Type exit if you'd like to end the program."
        puts ""

        choice = gets.strip.downcase

        brewery = Brewery.find(choice.to_i)

        if choice == "exit"
            program_exit
        # elsif choice != "exit" || choice.to_i.between?(1, 20) 
        #     program_error
        else choice.to_i.between?(1, 20)
            brewery_details(brewery)
            still_thirsty
        end

    end 

    def still_thirsty
        puts ""
        puts "Still thirsty? Type brew if you want to get details about another brewery."
        puts "Otherwise, type exit to end the program."
        puts ""
       
        choice = gets.strip.downcase

        if choice == "brew"
           Brewery.list_breweries
           brewery_choice
        else choice == "exit"
            program_exit
        # else choice !=  "exit" || "brew"
        #     program_error
        end
    end 

    def program_exit
        puts ""
        puts "It's closing time. Cheers!"
        puts ""
        exit
    end 

    def program_error
        puts "Invalid choice."
        Brewery.list_breweries
        brewery_choice
    end 

    def brewery_details(brewery)
        puts ""
        puts "Here is more information about the brewery you chose."
        puts ""
        puts "Name: #{brewery.name}"
        puts "Type: #{brewery.brewery_type}"
        puts "Address: #{brewery.street}"
        puts "Phone: #{brewery.phone}"
        puts "Website: #{brewery.website_url}"
    end 

end 