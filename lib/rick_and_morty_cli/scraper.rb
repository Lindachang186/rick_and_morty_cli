require "pry"

class RickAndMortyCli::Scraper

  def get_page
    doc = Nokogiri::HTML(open("https://rickandmortyapi.com/api/character/"))
    binding.pry
  end

  def get_character
    self.get_page.css("p").children
  end


end
