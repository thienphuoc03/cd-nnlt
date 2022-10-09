class Student
  attr_accessor :name_143, :age_143, :hometown_143, :classStudent_143

  def initialize(name_143, age_143, hometown_143, classStudent_143)
    @name_143 = name_143
    @age_143 = age_143
    @hometown_143 = hometown_143
    @classStudent_143 = classStudent_143
  end

  def show()
    puts "Name: #{@name_143}, age: #{@age_143}, hometown: #{@hometown_143}, class student: #{@classStudent_143}"
  end
end