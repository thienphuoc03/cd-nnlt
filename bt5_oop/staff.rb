class Staff < Officer
    attr_accessor :task_143
    def initialize name_143, age_143, gender_143, address_143, task_143
        super
        @task_143 = task_143
    end

    def display
        puts "task = #{@task_143}, name = #{@name_143}, age = #{@age_143}, gender = #{@gender_143},address = #{@address_143}"
    end
end