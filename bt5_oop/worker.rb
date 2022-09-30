class Worker < Officer
    attr_accessor :level
    def initialize name_143, age_143, gender_143, address_143, level_143
        super
        @level_143 = level_143
    end

    def display
        puts "level = #{@level_143}, name = #{@name_143}, age = #{@age_143}, gender = #{@gender_143},address = #{@address_143}"
    end
end