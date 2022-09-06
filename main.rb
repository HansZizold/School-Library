require_relative('./operations')
require('./lib/procedures')

class Menu
  def initialize(*menu_options)
    @menu_options = menu_options
    @exit_option = @menu_options.length
  end

  attr_reader :exit_option

  def option_menu
    puts 'Please choose an option by entering a number: '
    @menu_options.each_with_index { |item, index| puts "#{index + 1} - #{item}" }
    gets.to_i
  end
end

def main
  system('cls')
  puts 'Welcome to School Library operations!'
  puts "\n"
  menu
end

# rubocop:disable Metrics/CyclomaticComplexity
def menu
  operations = Operations.new
  menu = Menu.new('List all books', 'List all people', 'Create a person', 'Create a Book', 'Create a rental',
                  'List all rentals for a given person id', 'Exit')
  while (option = menu.option_menu) != menu.exit_option
    case option
    when 1
      operations.list_books
    when 2
      list_person(operations)
    when 3
      create_person(operations)
    when 4
      create_book(operations)
    when 5
      operations.add_rental
    when 6
      operations.list_rentals
    else
      print "Invalid Option\n\n"
    end
  end
  puts 'Thank you for using this app!'
  puts "\n"
end
# rubocop:enable Metrics/CyclomaticComplexity

main
