
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
        puts character.name
        puts character.species
        puts character.status
        puts character.episodes
      end
    end
  end

  def self.find_random
    @@all.find do |character|
      x = @@all.length
      number = rand(1...493)
      if character.id == number
        character.name
      end
    end
    binding.pry
  end

end
