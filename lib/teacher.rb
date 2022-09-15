require_relative('./person')

class Teacher < Person
  def initialize(age, name, specialization = 'Computer Science')
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
