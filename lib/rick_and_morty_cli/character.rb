require "pry"
class RickAndMortyCli::Character

  attr_accessor :id, :name, :status, :species, :episode

  @@all = []

  def initialize(hash = {})
    @id = hash["id"]
    @name = hash["name"]
    @status = hash["status"]
    @species = hash["species"]
    @episode = hash["episode"]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find_all do |character|
      character.name.downcase.match(name.downcase)
    end
  end

  def self.print_all
    list = []
    @@all.each_with_index do |character, index|
      list << "#{index + 1}. " + character.name
    end
    list
  end


  def self.find_random
      x = @@all.length
      number = rand(1...x)
      @@all[number]
  end

  def details
    [
      "Name: #{self.name}",
      "Species: #{self.species}",
      "Status: #{self.status}",
      "Id: #{self.id}"
    ]
  end




end
