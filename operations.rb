require_relative './lib/student'
require_relative './lib/teacher'
require_relative './lib/book'
require_relative './lib/rental'

class Operations
  def initialize
    @persons = []
    @books = []
    @rentals = []
  end

  attr_accessor :persons, :books, :rentals

  def list_books
    puts '[Books] None' if @books.length.zero?
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
    puts "\n"
  end

  def list_person
    type = 'Student'
    @persons.each do |person|
      type = 'Teacher' if person.specialization != 'unknown'
      puts "[#{type}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def add_student(age, name, parent_permission)
    permission = false
    permission = true if %w[y Y].include?(parent_permission)
    permission = false if %w[n N].include?(parent_permission)
    @persons << Person.new(age, name, parent_permission: permission)
    puts 'Person created successfully!'
    puts "\n"
  end

  def add_teacher(age, name, specialization)
    @persons << Person.new(age, name, specialization)
    puts 'Person created successfully!'
    puts "\n"
  end

  def add_book(title, author)
    @books << Book.new(title, author)
    puts 'Book created successfully!'
    puts "\n"
  end

  def add_rental
    type = 'Student'
    puts 'Select a book from the following list by number'
    @books.each.each_with_index { |book, index| puts "#{index}) Title: #{book.title}, Author: #{book.author}" }
    book_index = gets.chomp.to_i

    puts 'Select a person from the following list by number (not id)'
    @persons.each_with_index do |person, index|
      type = 'Teacher' if person.specialization != 'unknown'
      puts "#{index}) [#{type}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_index = gets.chomp.to_i

    print 'Date: '
    date = gets.chomp

    @rentals << Rental.new(date, books[book_index], persons[person_index])
    puts 'Rental created successfully'
    puts "\n"
  end

  def list_rentals
    print 'ID of person: '
    person_id = gets.chomp.to_i

    person_selected = @persons.select { |person| person.id == person_id }
    puts 'Rentals: '
    person_selected[0].rentals.each do |rental|
      puts "Date: #{rental.date}, \"Book #{rental.book.title}\" by #{rental.book.author}"
    end
    puts "\n"
  end
end
