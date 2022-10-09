require_relative "Hotel"
require_relative "Person"
require_relative "Room"
require_relative "RoomA"
require_relative "RoomB"
require_relative "RoomC"

hotel_143 = Hotel.new
while true
  # system("clear") || system("cls")
  puts "\n\n-----Application Manager Candidate-----"
  puts "Enter 1: To insert person for rent"
  puts "Enter 2: To remove person by passport"
  puts "Enter 3: To calculator price by passport"
  puts "Enter 4: To show infor"
  puts "Enter 5: To exit:"

  line = gets.to_i
  case line
  when 1
    puts "\n-----Insert person-----"
    puts "Enter name:"
    name_143 = gets.chomp
    puts "Enter age:"
    age_143 = gets.to_i
    puts "Enter passport:"
    passport_143 = gets.chomp

    puts "Choise a to rent room type A"
    puts "Choise b to rent room type B"
    puts "Choise c to rent room type C"
    choice_143 = gets.chomp
    if choice_143 == "a"
      room_143 = RoomA.new
    elsif choice_143 == "b"
      room_143 = RoomB.new
    elsif choice_143 == "c"
      room_143 = RoomC.new
    end

    puts "Enter number day for rent:"
    numberRent_143 = gets.to_i

    person_143 = Person.new(name_143, age_143, passport_143, room_143, numberRent_143)
    hotel_143.addPerson(person_143)
  when 2
    puts "\n-----Remove person-----"
    puts "Enter passport:"
    passport_143 = gets.chomp
    hotel_143.deletePerson(passport_143)
  when 3
    puts "\n-----Calculation price-----"
    puts "Enter passport:"
    passport_143 = gets.chomp
    price_143 = hotel_143.calculator(passport_143)
    puts "Price: #{price_143}"
  when 4
    puts "\n-----List of Customer-----"
    hotel_143.show()
  when 5
    puts "Exits"
    return
  else
    puts "Invalid"
  end
end