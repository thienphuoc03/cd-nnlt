require_relative "ManagerTeacher"
require_relative "Teacher"

managerTeacher = ManagerTeacher.new
while true
  puts "\n\n-----Application Manager Teacher-----"
  puts "Enter 1: To insert teacher"
  puts "Enter 2: To remove teacher"
  puts "Enter 3: To get salary"
  puts "Enter 4: To exit"

  line = gets.to_i
  case line
  when 1
    puts "\n-----Insert Teacher-----"
    puts "Enter ID:"
    id_143 = gets.chomp
    puts "Enter name:"
    name_143 = gets.chomp
    puts "Enter age:"
    age_143 = gets.to_i
    puts "Enter hometown:"
    hometown_143 = gets.chomp
    puts "Enter salary:"
    salary_143 = gets.to_i
    puts "Enter bonus:"
    bonus_143 = gets.to_i
    puts "Enter penaty"
    penaty_143 = gets.to_i
    # puts "Enter real salary:"
    # realSalary_143 = gets.to_i

    teacher_143 = Teacher.new(salary_143, bonus_143, penaty_143, name_143, age_143, hometown_143, id_143)

    managerTeacher.addTeacher(teacher_143)
  when 2
    puts "\n-----Remove teacher-----"
    puts "Enter id teacher:"
    id_143 = gets.chomp
    managerTeacher.deleteById(id_143)
  when 3
    puts "\n-----Get salary teacher-----"
    puts "Enter id teacher:"
    id_143 = gets.chomp
    managerTeacher.getSalary(id_143)
  when 4
    puts "Exits"
    return
  else
    puts "Invalid"
  end
end