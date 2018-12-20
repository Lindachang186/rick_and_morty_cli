
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
    @@all.find do |character|
      if name == character.name
        puts "Name: #{character.name}"
        puts "Species: #{character.species}"
        puts "Status: #{character.status}"
        puts "Id: #{character.id}"
      end
    end
  end


  def self.find_random
      x = @@all.length
      number = rand(1...x)
      @@all[number]
      puts "Name: #{@@all[number].name}"
      puts "Species: #{@@all[number].species}"
      puts "Status: #{@@all[number].status}"
  end


end
