require_relative "Student"
require_relative "Card"

class ManagerCard < Card
  def initialize
    @cards_143 = []
  end

  def addCard(card)
    @cards_143 << cards_143
  end

  def deleteCard(id)
    @cards_143.each do |card_143|
      if card_143.id == id
        @cards_143.delete(card_143)
        return true
      end
    end

    return false
  end

  def show()
    @cards_143.each do |card_143|
      card_143.show()
    end
  end
end