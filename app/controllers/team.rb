class Team
    attr_accessor :name, :motto

    def initialize(attr_hash = {})
        @name = attr_hash[:name]
        @motto = attr_hash[:motto]
    end
end