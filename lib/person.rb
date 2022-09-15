require_relative('./nameable')
require_relative('./capitalize')
require_relative('./trimmer')

class Person < Nameable
  def initialize(age, name, specialization = 'unknown', parent_permission: true)
    super()
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @specialization = specialization
    @rentals = []
  end

  attr_reader :id
  attr_accessor :name, :age, :rentals, :specialization, :parent_permission

  def can_use_services?
    return true if isof_age? || @parent_permission == true

    false
  end

  def correct_name
    @name
  end

  private

  def isof_age?
    return true if age >= 18

    false
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end
end
