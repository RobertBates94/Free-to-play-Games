class Arrests
    attr_accessor :Team_preffered_name, :Name, :Category

    @@all = []
    
    def initialize(category, name, team_preffered_name)
        @category = category
        @name = name
        @team_preffered_name = team_preffered_name
    end

    def self.all
        @@all
    end

    def save 
        @@all << self
    end

end