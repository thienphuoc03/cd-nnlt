require_relative "Room"

class Person < Room
  attr_accessor :name_143, :age_143, :passport_143, :room_143, :numberRent_143

  def initialize(name_143, age_143, passport_143, room_143, numberRent_143)
    @name_143 = name_143
    @age_143 = age_143
    @passport_143 = passport_143
    @room_143 = room_143
    @numberRent_143 = numberRent_143
  end

  def show()
    puts "Name: #{@name_143}, age: #{@age_143}, passport: #{@passport_143}, room: #{@room_143}, number rent: #{@numberRent_143}"
  end
end