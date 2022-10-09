require_relative "Person"
require_relative "Family"
require_relative "Town"

town_143 = Town.new

while true
    puts "Enter number town:"
    n_143 = gets.chomp.to_i
    for i in 0..n_143-1
        puts "\n----------Town #{i+1}:----------"
        # Input foreach family
        puts "Enter address:"
        address_143 = gets.chomp

        # Enter person number in family
        puts "Enter number person:"
        number_143 = gets.to_i

        for j in 0..number_143-1
            # Input person for famil
            puts "\nMember #{j+1}:"
            puts "Enter name:"
            name_143 = gets.chomp
            puts "Enter age:"
            age_143 = gets.to_i
            puts "Enter job:"
            job_143 = gets.chomp
            puts "Enter passport:"
            passport_143 = gets.chomp

            family_143 = Family.new(name_143, age_143, job_143, passport_143, address_143)
            town_143.addFamily(family_143)
        end
    end

    # After done input
    puts "\n---------Towns---------"
    town_143.showFamilyMembers()
end
