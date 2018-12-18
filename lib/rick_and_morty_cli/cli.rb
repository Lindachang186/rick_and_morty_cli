#My CLI Controller
require 'pry'


class RickAndMortyCli::CLI

  def call
     RickAndMortyCli::Api.new
     puts "Welcome to the Rick And Morty Character Finder"
  end

  def print_characters

  end

end
