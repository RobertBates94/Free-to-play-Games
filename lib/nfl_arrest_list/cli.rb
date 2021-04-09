class CLI

    def start
        puts "Welcome to a collection of free to play games! What's your name?"
        API.get_data
        input = user_input
        greet(input)
    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts "Sup' #{name}! Ever wanted to check all the free to play games available for your
        specific console. Well here I have created a list that will pull up different game that are
        free to play for the platform you choose with a description on what the game is like.
        Hope you enjoy it!
        To view a list of consoles to choose from just press Y.
        To exit from my program type exit."
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
        puts "See any games your intrested in?
        If you find any games you enjoyed be sure to tweet about it... who knows, it make be the next
        Fortnite or Apex Legends!"
    end

    def invalid
        puts "I dont think thats what you meant to type, try that again."
        menu
    end

    def arrest_list
        charges.each.with_index(1) do |charge, index|
            puts "#{index}. #{charge}"
        end
        select_charges
    end

    def select_charges
        puts "Please enter the name of the charges you would like to see players convicted of."
        selection = user_input
        charges_details(selection)
    end

    def charges_details(charge)
        puts "#{charge}"
    end

end