#My CLI Controller
require "pry"

class RickAndMortyCli::Cli

  def call
     RickAndMortyCli::Api.new.get_characters
     puts "Welcome to the Rick And Morty Character Finder"
     start
  end

  def start

    if input.is_a?(String)


    end
  end


  # Make a list of options
  # Find Rick and Morty characters by name
  # Find Random Rick and Morty Character
end
