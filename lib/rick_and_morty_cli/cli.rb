#My CLI Controller
require "pry"

class RickAndMortyCli::Cli

  def call
     RickAndMortyCli::Api.new.get_characters
     binding.pry
     puts "Welcome to the Rick And Morty Character Finder"
     start
  end

  def start
    puts "What Rick And Morty character would you like to find?"
    input = gets.strip

    if input.is_a?(Integer)

    elsif input.is_a?(String)

    end

  end


end
