require_relative '../decorator'
require_relative '../person'
require_relative '../capitalize'
require_relative '../trimmer'

describe BaseDecorator do
  context 'Testing the class BaseDecorator' do
    before :each do
      @person1 = Person.new(19, 'john')
      @person2 = Person.new(40, 'maximilianus')
      @capitalize = CapitalizeDecorator.new(@person1)
      @trimmer = TrimmerDecorator.new(@person2)
      @basedecorator = BaseDecorator.new('decorator_name')
    end

    it '@decorator should be an instance of the class Decorator' do
      expect(@basedecorator).to be_instance_of BaseDecorator
    end

    it 'The method correct_name should be available for the instance @basedecorator' do
      expect(@basedecorator).to respond_to(:correct_name)
    end

    it 'The method correct_name should display the name of the person1' do
      expect(@person1.correct_name).to eq('john')
    end

    it 'The method correct_name for @capitalize object should display
    the name of the @person1 with the first letter capitalized' do
      expect(@capitalize.correct_name).to eq('John')
    end

    it 'The method correct_name for @trimmer object should display
    the first 10 characters of the name of the @person2' do
      expect(@trimmer.correct_name).to eq('maximilian')
    end
  end
end
