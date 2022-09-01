# Tests for relationship between Classroom and Student
require './student'
require './classroom'

# Create 4 students
student1 = Student.new
student2 = Student.new
student3 = Student.new
student4 = Student.new
student1.name = 'Hans'
student2.name = 'Leo'
student3.name = 'Gabriela'
student4.name = 'Brita'

# Create 2 classromms
classroom5b = Classroom.new('5B')
classroom5c = Classroom.new('5C')

# Add 2 students to each classroom
classroom5b.add_student(student1)
classroom5b.add_student(student2)
classroom5c.add_student(student3)
classroom5c.add_student(student4)

# Print the students' classroom
p "Student's Classrooms"
p "#{student1.name}: #{student1.classroom.label}"
p "#{student2.name}: #{student2.classroom.label}"
p "#{student3.name}: #{student3.classroom.label}"
p "#{student4.name}: #{student4.classroom.label}"
puts "\n"

# Print the classroom' students
p "Students for Classroom #{classroom5b.label}"
classroom5b.students.map { |student| p student.name }
puts "\n"
p "Students for Classroom #{classroom5c.label}"
classroom5c.students.map { |student| p student.name }
puts "\n"
