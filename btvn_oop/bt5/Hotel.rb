require_relative "Person"
require_relative "Room"

class Hotel < Person
  def initialize
    @room_143 = []
  end

  def addPerson(person_143)
    @room_143 << person_143
    puts("Add successfully")
  end

  def deletePerson(passport)
    person = findPersonByPassport(passport)
    @room_143.delete(person)
    puts "Remove successfully"
  end

  def calculator(passport)
    person = findPersonByPassport(passport)
    return total = person.room_143.price_143 * person.numberRent_143
  end

  def findPersonByPassport(passport)
    @room_143.each do |person_143|
      if person_143.passport_143 == passport
        return person_143
      end
    end
  end

  def show()
    @room_143.each do |person_143|
      person_143.show()
    end
  end
end