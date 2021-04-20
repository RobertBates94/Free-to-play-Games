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
        puts "Sup' #{name}! Ever wanted to check out all the free to play games available for
        PC players. Well here I have created a list that will pull up different games that are
        free to play with a description on what the game is like."
        puts ""
        puts "To view a list of games to choose from just press y.
        To exit from my program type exit."
        menu
    end

    def menu
        selection = user_input
        if selection == "y"
            print_games
        elsif selection == "exit"
            goodbye
        else
            invalid
        end

    end

    def goodbye
        puts "See any games your intrested in?"
        puts ""
        puts "If you find any games you enjoyed be sure to tweet about it... who knows, it make be the next
        Fortnite or Apex Legends!"
    end

    def invalid
        puts "I dont think thats what you meant to type, try that again."
        puts "Press y to see a list of games or exit to leave the CLI."
        menu
    end

    def print_games
        Games.all.each.with_index(1) do |game, index|
            puts "#{index}. #{game.title}"
        end
        select_game
    end

    def select_game
        puts ""
        puts "Please enter the name of the free to play game you would like to see."
        selection = user_input
        if selection == "exit"
            goodbye
        elsif Games.find_by_selection(selection)
            game = Games.find_by_selection(selection)
            game_details(game)
        else 
            puts "invalid try again"
            select_game
        end
    end
    def game_details(game)
        puts ""
        puts "Name: #{game.title}"
        puts ""
        puts "------------------------------------------------"
        puts ""
        puts "Platform: #{game.platform}"
        puts ""
        puts "------------------------------------------------"
        puts ""
        puts "Short Description: #{game.short_description}"
        puts ""
        puts ""
        puts "Enter y to see more games or type exit to leave the program."
        menu
    end
end