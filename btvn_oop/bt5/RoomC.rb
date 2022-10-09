require_relative "Room"

class RoomC < Room
  def initialize
    super("C", 100)
  end

  def show()
    puts "Room C - category: #{@category_143}, price: #{@price_143}"
  end
end