#My CLI Controller
class RickAndMortyCli::Cli

  def call
    binding.pry
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
     puts "4. EXIT PROGRAM"

     input = gets.strip.to_i
      if input == 1
        character_finder
      elsif input == 2
        random_character
      elsif input == 3
        all_characters
      elsif input == 4
        exit
      elsif input > 4
        puts "Invalid option"
        start
      end

    restart_options
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
    restart_options
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

        if input < RickAndMortyCli::Character.all.size
          finder.each do |character|
            puts character.details
          end
        else puts "That character does not exist!"
        end
        restart_options

  end

  def restart_options
    puts ""
    puts "Would you like to find another character?"
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
