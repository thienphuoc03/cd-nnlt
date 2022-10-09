require_relative "Student"
require_relative "School"

school_143 = School.new
while true
  # add student
  puts "Enter number student:"
  number = gets.to_i
  for i in 0..number-1
    puts "\n-----Insert student #{i+1}-----"
    puts "Enter name:"
    name_143 = gets.chomp
    puts "Enter age:"
    age_143 = gets.to_i
    puts "Enter hometown:"
    hometown_143 = gets.chomp
    puts "Enter class:"
    classStudent_143 = gets.to_i

    student_143 = Student.new(name_143, age_143, hometown_143, classStudent_143)
    school_143.addStudent(student_143)
  end
  puts "\n\n-----List of Student-----"
  school_143.show()

  # Students 20 years old
  puts "\n\n-----List of Student 20 years old-----"
  school_143.getStudent20YearsOld()

  # Student 20 years old and in DN
  count_143 = school_143.countStudent23YearOldInDN()
  puts "count: #{count_143}"
end