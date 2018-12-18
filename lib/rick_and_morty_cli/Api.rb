require "pry"

class RickAndMortyCli::Api


  def get_characters_from_page(url= "https://rickandmortyapi.com/api/character")
    data = open("https://rickandmortyapi.com/api/character/?page=#{page}").read
    response = JSON.parse(data)
    binding.pry
    pages = response["info"]["pages"]
  end

  def get_all_characters
    characters = []

  end


end
