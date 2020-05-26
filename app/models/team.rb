class Team
  attr_accessor :name, :motto
  @@all = []

  def initialize(options={})
    @name = options[:name]
    @motto = options[:motto]
    save
  end

  def save
    @@all << self
  end
  
  def self.all
    @@all 
  end 
end