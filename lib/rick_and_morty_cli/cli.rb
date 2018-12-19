#My CLI Controller

class RickAndMortyCli::Cli

  def call
     RickAndMortyCli::Api.new.get_characters
     puts "Welcome to the Rick And Morty Character Finder"
     puts "Please choose from the following menu"
     puts "1. Find character by name"
     puts "2. Find me a random character"

     input = gets.strip
      if input == 1
        character_finder
      elsif input == 2
        random
      end
  end

  def character_finder

    puts "Which Rick And Morty character would you like to find?"
    input = gets.strip

    if input.is_a?(String)
      RickAndMortyCli::Character.find_by_name(input)
    else
      puts "I can't seem to find that character. Try again."
      character_finder
    end

  end

  def random
    RickAndMortyCli::Character.find_random
  end


end
