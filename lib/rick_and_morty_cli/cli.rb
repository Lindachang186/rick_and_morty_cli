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
     puts "3. List all character names -- enter 3"

     input = gets.strip.to_i
      if input == 1
        character_finder
      elsif input == 2
        random_character
      elsif input == 3
        all_characters
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
    characters = RickAndMortyCli::Character.find_by_name(input)

    if characters.size >= 1
      characters.each do |character|
        puts character.details
      end
    else
      puts "I can't seem to find that character. Try again."
      character_finder
    end

  end

  def random_character
    puts RickAndMortyCli::Character.find_random.details
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

    def all_characters
      puts RickAndMortyCli::Character.print_all
      find_character_by_id
    end

    def find_character_by_id
      puts ""
      puts "Find out more about a character!"
      puts "Enter their number to learn more -- enter character #"

      input = gets.strip.to_i
      finder = RickAndMortyCli::Character.find_by_id(input)

        if finder.size >= 1
          finder.each do |character|
            puts character.details
          end
        end
        
        find_character_by_id
      end

      def restart_options

      puts ""
      puts "Return to Main -- enter MAIN"
      puts "Exit Program -- enter Exit"

      input = gets.strip.downcase

      if input.downcase == "main"
        start
      elsif input.downcase == "exit"
        puts "Thank you! Have a great day!"
        exit
      else
        puts "I don't understand that answer."
        start
      end

    end



end
