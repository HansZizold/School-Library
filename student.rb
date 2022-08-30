require_relative('./person')

class Student < Person
  def initialize(classroom = '5A')
    super
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
