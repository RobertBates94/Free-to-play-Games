class CLI

    def start
        puts "Welcome to NFL arrest list! What's your name?"
        input = user_input
        greet(input)
    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts "Sup' #{name}! As it turns out, around 51% of all NFL players have been convicted
        of some sort of crime. What do you think, do any of your favorite players make the list?
            Type y to see a list of charges players have gotten convicted of, 
            Type exit if you would like to exit my program."
            menu
    end

    def menu
        selection = user_input
        if selection == "y"
            arrest_list
            menu
        elsif selection == "exit"
            goodbye
        else
            invalid
        end
    end

    def goodbye
        puts "Were you suprized by any of these? 
        Thanks for spending some time on my project, have a good day!"
    end

    def invalid
        puts "I dont think thats what you meant to type, try that again."
        menu
    end

    def arrest_list
        charges = ["Drugs", "DUI", "Theft"]
        charges.each.with_index(1) do |charge, index|
            puts "#{index}. #{charge}"
        end
    end

end