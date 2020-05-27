class SuperHero < ActiveRecord::Base
  belongs_to :team
  # attr_accessor :name, :power, :biography
  # @@all = []

  # def initialize(options={})
  #   options.each do |property, value|
  #     self.send("#{property}=", value)
  #   end 
  #   save
  # end 

  # def save
  #   @@all << self
  # end 

  # def self.all
  #   @@all
  # end 
end