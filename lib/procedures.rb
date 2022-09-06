require_relative('../operations')

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
