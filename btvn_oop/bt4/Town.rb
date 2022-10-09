require_relative "Family"
require_relative "Person"

class Town < Family
    # attr_accessor :families
    def initialize()
        @families_143 = []
    end

    def addFamily(family_143)
        @families_143 << family_143
    end

    def showFamilyMembers()
        @families_143.each do |member_143|
            member_143.show()
        end
    end
end