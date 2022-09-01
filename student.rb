require_relative('./person')

class Student < Person
  def initialize(classroom = '5A')
    super
    @classroom = classroom
  end

  attr_reader :classroom

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
