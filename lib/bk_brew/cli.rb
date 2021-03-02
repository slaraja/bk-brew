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
        # Brewery.all.each.with_index(1) do |brewery, i|
        #     puts "#{i}. #{brewery.name}"
        # end 
    end 

    def brewery_choice
        choice = nil
        while choice != "exit"
            puts ""
            puts "Please enter a number from 1-20 to learn more about a brewery."
            # puts "Enter exit to end the program."
            choice = gets.strip.downcase

            brewery = Brewery.find(choice.to_i)

            brewery_details(brewery)

            puts ""
            puts "Still thirsty? Type brew if you want to get details about another brewery."
            puts "Otherwise, type exit to end the program."
            puts ""
            choice = gets.strip.downcase

            if choice == "brew"
                Brewery.list_breweries
              elsif choice == "exit"
                puts ""
                puts "It's closing time. Cheers!"
                puts ""
                exit
              else
                puts ""
                puts "Invalid choice."
                brewery_choice
            end
        end
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