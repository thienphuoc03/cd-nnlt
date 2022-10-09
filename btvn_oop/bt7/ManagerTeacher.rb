require_relative "Teacher"

class ManagerTeacher
  def initialize
    @teachers_143 = []
  end

  def addTeacher(teacher_143)
    @teachers_143 << teacher_143
  end

  def deleteById(id)
    @teachers_143.each do |teacher_143|
      if teacher_143.id == id
        @teachers_143.delete(teacher_143)
        return true
      end
    end

    return false
  end

  def getSalary(id)
    @teachers_143.each do |teacher_143|
      if teacher_143.id == id
        return teacher_143.salary_143 + teacher_143.bonus_143 + teacher_143.penaty_143
      end
    end

    return 0
  end
end