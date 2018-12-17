require "pry"
require "nokogiri"

class Scraper

  def get_page
      new = Nokogiri::HTML(open("https://rickandmortyapi.com/"))
      binding.pry
    end


end
