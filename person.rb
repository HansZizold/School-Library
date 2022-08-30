class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age

  def can_use_services?
    return true if isof_age? || @parent_permission == true

    false
  end

  private

  def isof_age?
    return true if age >= 18

    false
  end
end
