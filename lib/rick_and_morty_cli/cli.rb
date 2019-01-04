#My CLI Controller
class RickAndMortyCli::Cli

  def call
     RickAndMortyCli::Api.new.get_characters_from_page
     puts "Welcome to the Rick And Morty Character Finder"
     start
   end

   def start
     puts "Please choose from the following menu"
     puts ""
     puts "1. Find character by name -- enter 1"
     puts "2. Find me a random character -- enter 2"

     input = gets.strip.to_i
      if input == 1
        character_finder
      elsif input == 2
        random_character
      end

    puts ""
    puts "Would you like to find another character? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts "Thank you! Have a great day!"
      exit
    else
      puts "I don't understand that answer."
      start
    end

  end

  def character_finder

    puts "Which Rick And Morty character would you like to find?"
    input = gets.strip

    if character = RickAndMortyCli::Character.find_by_name(input) 
      character
    else
      puts "I can't seem to find that character. Try again."
      character_finder
    end

  end

  def random_character
    RickAndMortyCli::Character.find_random
    puts ""
    puts "Would you like to find another random character?"
    puts "enter Y for another or N to exit or MAIN (for main menu)"

    input = gets.strip.downcase

    if input == "y"
      random_character
    elsif input == "n"
      puts "Thank you! Have a great day!"
      exit
    elsif input.downcase == "main"
      start
    else
      puts "I don't understand that answer."
      start
    end

  end



end
