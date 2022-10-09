require_relative "Student"

class Card < Student
  attr_accessor :name_143, :age_143, :school_143, :id_143, :borrowDate_143, :paymentDate_143, :bookId_143

  def initialize(name_143, age_143, school_143, id_143, borrowDate_143, paymentDate_143, bookId_143)
    super(name_143, age_143, school_143)
    @id_143 = id_143
    @borrowDate_143 = borrowDate_143
    @paymentDate_143 = paymentDate_143
    @bookId_143 = bookId_143
  end

  def show()
    puts "Id: #{@id_143}, name: #{@name_143}, age: #{@age_143}, school: #{@school_143}, borrow date: #{@borrowDate_143}, payment date: #{@paymentDate_143}, book id: #{@bookId_143}"
  end
end