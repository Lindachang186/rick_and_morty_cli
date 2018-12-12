require "pry"

class Scraper

  def get_page
      Nokogiri::HTML(open("https://rickandmortyapi.com/"))
    end


end
