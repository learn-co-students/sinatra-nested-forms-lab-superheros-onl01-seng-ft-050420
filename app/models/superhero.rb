class SuperHero
    # belongs_to :team
    attr_accessor :name, :power, :bio
    SUPERHEROS = []

    def initialize(params)
        # params.each do |key, value|
        #     self.send("#{key}=", value)
        # end
        @name = params[:name]
        @power = params[:power]
        @bio = params[:bio]
        SUPERHEROS << self
    end

    def self.all
        SUPERHEROS
    end

    def self.clear
        SUPERHEROS.clear
    end

end