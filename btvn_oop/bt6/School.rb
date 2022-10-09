require_relative "Student"

class School < Student
  def initialize
    @students_143 = []
  end

  def addStudent(student_143)
    @students_143 << student_143
  end

  def getStudent20YearsOld()
    students = []
    @students_143.each do |student_143|
      if student_143.age_143 == 20
        students << student_143
      end
    end

    if students != []
      students.each do |student|
        student.show()
      end
    else
      puts "null"
    end
  end

  def countStudent23YearOldInDN()
    count = 0
    @students_143.each do |student_143|
      if student_143.age_143 == 23 && student_143.hometown_143 == "DN"
        count += 1
      end
    end
    return count
  end

  def show()
    @students_143.each do |student_143|
      student_143.show()
    end
  end
end