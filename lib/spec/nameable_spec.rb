require_relative '../nameable'

describe Nameable do
  context 'Testing the class Nameable' do
    before :each do
      @nameable = Nameable.new
    end

    it '@nameable should be an instance of the class Nameable' do
      expect(@nameable).to be_instance_of Nameable
    end

    it 'The method correct_name should be available for the instance @nameable' do
      expect(@nameable).to respond_to(:correct_name)
    end
  end
end
