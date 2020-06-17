
class Hero 

    attr_accessor :name, :power, :bio 

    @@all = [] 

    def initialize(hash)#(name, power, bio)
        @name = hash[:name]
        @power = hash[:power]
        @bio = hash[:bio]
       
        # @name = name 
        # @power = power 
        # @bio = bio 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

end 