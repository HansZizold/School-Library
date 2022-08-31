require_relative('./person')

class Student < Person
  def initialize(classroom = '5A')
    super
    @classroom = classroom
  end

  attr_accessor :classroom

  def play_hooky
    "¯\(ツ)/¯"
  end
end
