require_relative 'engineer.rb'
require_relative 'officer.rb'
require_relative 'staff.rb'
require_relative 'worker.rb'
# engineer = Engineer.new
class Manager_Officer
    officers_143 = Array.new

    def add_officer(officer_143)
        officers_143 << officer_143
    end

    def search_officer_by_name (name)

    end

    def show_list_in_for_officer
        puts "List Officer: #{officers_143}"
    end

    while true
        system("clear") || system("cls")
        puts "Application Manager Officer"
        puts "Enter 1: To insert officer"
        puts "Enter 2: To search officer by name: "
        puts "Enter 3: To show information officers"
        puts "Enter 4: To exit:"

        choice_143 = gets.chomp.to_i
        case choice_143
        when 1
            puts "Enter a: to insert Enginner"
            puts "Enter b: to insert Worker"
            puts "Enter c: to insert Staff"

            type_143 = gets.chomp
            case type_143
            when "a"
                puts "Enter name: "
                name_143 = gets.chomp
                puts "Enter age:"
                age_143 = gets.chomp.to_i
                puts "Enter gender: "
                gender_143 = gets.chomp
                puts "Enter address: "
                address_143 = gets.chomp
                puts "Enter branch: "
                branch_143 = gets.chomp

                engineer_143 = Engineer.new(name_143, age_143, gender_143, address_143, branch_143)

                add_officer(engineer_143)

                engineer_143.display
            when "b"
                puts "Enter name: "
                name_143 = gets.chomp
                puts "Enter age:"
                age_143 = gets.chomp.to_i
                puts "Enter gender: "
                gender_143 = gets.chomp
                puts "Enter address: "
                address_143 = gets.chomp
                puts "Enter level: "
                level_143 = gets.chomp.to_i
                Worker(name_143, age_143, gender_143, address_143, level_143)
                add_officer(Worker)

                Worker.display
            when "c"
                puts "Enter name: "
                name_143 = gets.chomp
                puts "Enter age:"
                age_143 = gets.chomp.to_i
                puts "Enter gender: "
                gender_143 = gets.chomp
                puts "Enter address: "
                address_143 = gets.chomp
                puts "Enter task: "
                task_143 = gets.chomp
                Staff(name_143, age_143, gender_143, address_143, task_143)
                add_officer(Staff)

                Staff.display
            else
                puts "Invalid"
            end
        when 2
            puts "Enter name:"
            name_143 = gets.chomp
            search_officer_by_name (name)
        when 3
            show_list_in_for_officer
        when 4
            puts "Exits"
            exit true
        else
            puts "Invalid"
        end
    end
end