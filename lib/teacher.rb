require_relative('./person')

class Teacher < Person
  def initialize(specialization = 'Computer Science')
    super
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
