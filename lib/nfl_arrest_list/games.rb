class Games
    attr_accessor :platform, :title, :short_description

    @@all = []
    
    def initialize(games_hash)
        games_hash.each do |key, value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
        save
    end

    def self.all
        @@all
    end

    def save 
        @@all << self
    end

    def self.find_by_selection(game_title)
        self.all.detect do |game|
            game.title == game_title
        end
    end

end