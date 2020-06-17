require 'pry'
class Team 
    attr_accessor :name, :motto 

    @@all = [] 

    def initialize(hash)#(name, motto)
        @name = hash[:name]
        @motto = hash[:motto]
       
        
        # @name = name 
        # @motto = motto 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 
end 