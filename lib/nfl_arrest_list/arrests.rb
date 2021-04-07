class Arrests
    attr_accessor :Team_preffered_name, :Name, :Category

    @@all = []
    
    def initialize(Category, Name, Team_preffered_name)
        @Category = Category
        @name = Name
        @Team_preffered_name = Team_preffered_name
    end

    def self.all
        @@all
    end

    def save 
        @@all << self
    end

end