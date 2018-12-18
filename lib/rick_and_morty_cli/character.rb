
class RickAndMortyCli::Character

  attr_accessor :id, :name, :status, :species, :episode

  @@all = []

  def initialize(name=nil)
    @id = id
    @name = name
    @status = status
    @species = species
    @episode = episode
  end

end
