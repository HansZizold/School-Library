require_relative('./operations')

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

def list_person(operations)
  operations.list_person
  puts "\n"
end

def create_person(operations)
  menu_person = Menu.new('Create a student', 'Create a teacher', 'Main menu')
  option_person = menu_person.option_menu
  case option_person
  when 1
    create_person_student(operations)
  when 2
    create_person_teacher(operations)
  when 3
    puts "\n"
  else
    print "Invalid Option\n\n"
  end
end

def create_person_student(operations)
  print 'Age: '
  age = gets.chomp
  print 'Name: '
  name = gets.chomp
  print 'Has Parent Permission? [Y/N]: '
  permission = gets.chomp
  operations.add_student(age, name, permission)
end

def create_person_teacher(operations)
  print 'Age: '
  age = gets.chomp
  print 'Name: '
  name = gets.chomp
  print 'Specialization: '
  specialization = gets.chomp
  operations.add_teacher(age, name, specialization)
end

def create_book(operations)
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  operations.add_book(title, author)
end

main
