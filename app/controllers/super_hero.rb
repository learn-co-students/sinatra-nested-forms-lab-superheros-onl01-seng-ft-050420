class SuperHero
    attr_accessor :name, :power, :biography
    @@all = []

    def initialize(attr_hash = {})
        attr_hash.each {|k,v| self.send("#{k}=", v)}
        @@all << self
    end

    def self.all
        @@all
    end
end