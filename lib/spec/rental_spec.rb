require_relative '../book'
require_relative '../person'
require_relative '../rental'

describe Rental do
  context 'Testing the class Rental' do
    before :each do
      @person = Person.new(16, 'John Doe', parent_permission: false)
      @book = Book.new('Don Quijote de la Mancha', 'Miguel de Cervantes')
      @rental = Rental.new('2022-09-07', @book, @person)
    end

    it '@rental should be an instance of the class Rental' do
      expect(@rental).to be_instance_of Rental
    end

    it "@rental's date should be 2022-09-07" do
      expect(@rental.date).to eq('2022-09-07')
    end

    it "@rental's book title should be Don Quijote de la Mancha and author should be Miguel de Cervantes" do
      expect(@rental.book.title).to eq('Don Quijote de la Mancha')
      expect(@rental.book.author).to eq('Miguel de Cervantes')
    end

    it "@rental's person parent_permission should be false, age should be 16 and name should be John Doe" do
      expect(@rental.person.parent_permission).to eq(false)
      expect(@rental.person.age).to eq(16)
      expect(@rental.person.name).to eq('John Doe')
    end
  end
end
