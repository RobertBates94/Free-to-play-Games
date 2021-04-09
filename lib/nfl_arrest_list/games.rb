class Games
    attr_accessor :platform, :title, :description

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

end