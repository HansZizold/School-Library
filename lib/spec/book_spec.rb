require_relative '../book'

describe Book do
  context 'Testing the class Book' do
    before :each do
      @book = Book.new('Don Quijote de la Mancha', 'Miguel de Cervantes')
    end

    it '@book should be an instance of the class Book' do
      expect(@book).to be_instance_of Book
    end

    it "The book's title should be Don Quijote de la Mancha" do
      expect(@book.title).to eq('Don Quijote de la Mancha')
    end

    it "The book's author should be Miguel de Cervantes" do
      expect(@book.author).to eq('Miguel de Cervantes')
    end

    it 'The method add_rental should be available for the instance @book' do
      expect(@book).to respond_to(:add_rental)
    end
  end
end
