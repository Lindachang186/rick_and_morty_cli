require "pry"
require "nokogiri"

class RickAndMortyCli::Scraper

  def get_page
    Nokogiri::HTML(open("https://rickandmortyapi.com/"))
    binding.pry
  end




end
