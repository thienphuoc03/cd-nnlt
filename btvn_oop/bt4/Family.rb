require_relative "Person"

class Family < Person
    attr_accessor :name_143, :age_143, :job_143, :passport_143 ,:address_143

    def initialize(name_143, age_143, job_143, passport_143, address_143)
        super(name_143, age_143, job_143, passport_143)
        @address_143 = address_143
    end

    def show
        puts "Name: #{@name_143}, age: #{@age_143}, job: #{@job_143}, passport: #{@passport_143}, address: #{@address_143}"
    end
end