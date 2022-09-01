# Tests for relationship between Person and Book
require './book'
require './person'
require './rental'

# Create 2 books
book1 = Book.new('Title1', 'Author1')
book2 = Book.new('Title2', 'Author2')
book3 = Book.new('Title3', 'Author3')
book4 = Book.new('Title4', 'Author4')

# Create 2 persons
person1 = Person.new(19, 'Gaby')
person2 = Person.new(18, 'Leo')

# Create rentals
rental1 = Rental.new('2022-08-20', book1, person1)
rental2 = Rental.new('2022-07-18', book2, person2)
rental3 = Rental.new('2022-06-22', book3, person1)
rental4 = Rental.new('2022-05-24', book4, person2)
rental5 = Rental.new('2022-04-26', book1, person1)
rental6 = Rental.new('2022-03-10', book2, person2)
rental7 = Rental.new('2022-02-15', book3, person1)
rental8 = Rental.new('2022-01-08', book4, person2)

p 'RENTALS'
p "#{rental1.date}: #{rental1.person.name} borrowed #{rental1.book.title}"
p "#{rental2.date}: #{rental2.person.name} borrowed #{rental2.book.title}"
p "#{rental3.date}: #{rental3.person.name} borrowed #{rental3.book.title}"
p "#{rental4.date}: #{rental4.person.name} borrowed #{rental4.book.title}"
p "#{rental5.date}: #{rental5.person.name} borrowed #{rental5.book.title}"
p "#{rental6.date}: #{rental6.person.name} borrowed #{rental6.book.title}"
p "#{rental7.date}: #{rental7.person.name} borrowed #{rental7.book.title}"
p "#{rental8.date}: #{rental8.person.name} borrowed #{rental8.book.title}"
puts "\n"

p 'BOOKS RENTED'
p book1.title
book1.rentals.map { |bookrental| p "#{bookrental.date}: #{bookrental.person.name}" }
puts "\n"
p book2.title
book2.rentals.map { |bookrental| p "#{bookrental.date}: #{bookrental.person.name}" }
puts "\n"
p book3.title
book3.rentals.map { |bookrental| p "#{bookrental.date}: #{bookrental.person.name}" }
puts "\n"
p book4.title
book4.rentals.map { |bookrental| p "#{bookrental.date}: #{bookrental.person.name}" }
puts "\n"

p 'PERSON RENTALS'
p person1.name
person1.rentals.map { |personrental| p "#{personrental.date}: #{personrental.book.title}" }
puts "\n"
p person2.name
person2.rentals.map { |personrental| p "#{personrental.date}: #{personrental.book.title}" }
