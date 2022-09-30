require_relative 'officer.rb'
# officer = Officer.new
class Engineer < Officer
    attr_accessor :branch
    def initialize name_143, age_143, gender_143, address_143, branch_143
        super
        @branch_143 = branch_143
    end

    def display
        puts "branch = #{@branch_143}, name = #{@name_143}, age = #{@age_143}, gender = #{@gender_143},address = #{@address_143}"
    end
end