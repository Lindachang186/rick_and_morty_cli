
class RickAndMortyCli::Api


  def get_characters_from_page(url= "https://rickandmortyapi.com/api/character")
    data = open(url).read
    response = JSON.parse(data)
    response["results"].each do |character_hash|
      RickAndMortyCli::Character.new(character_hash)
    end
    next_url = response["info"]["next"]
    if next_url != ""
      get_characters_from_page(next_url)
    end
  end


end
