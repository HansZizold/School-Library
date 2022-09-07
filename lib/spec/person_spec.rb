require_relative '../person'

describe Person do
  context 'Testing the class Person' do
    before :each do
      @person1 = Person.new(16, 'John Doe', parent_permission: false)
      @person2 = Person.new(50, 'Jane Doe', 'Doctor')
    end

    it '@person1 and @person2 should be instances of the class Person' do
      expect(@person1).to be_instance_of Person
      expect(@person2).to be_instance_of Person
    end

    it "@person1's age should be 16 and parent_permission should be false" do
      expect(@person1.age).to eq(16)
      expect(@person1.parent_permission).to eq(false)
    end

    it "@person2's name should be Jane Doe and specialization should be Doctor" do
      expect(@person2.name).to eq('Jane Doe')
      expect(@person2.specialization).to eq('Doctor')
    end

    it 'The method can_use_services? should be available for the instances @person1 and @person2' do
      expect(@person1).to respond_to(:can_use_services?)
      expect(@person2).to respond_to(:can_use_services?)
    end

    it 'The method correct_name should be available for the instances @person1 and @person2' do
      expect(@person1).to respond_to(:correct_name)
      expect(@person2).to respond_to(:correct_name)
    end
  end
end
