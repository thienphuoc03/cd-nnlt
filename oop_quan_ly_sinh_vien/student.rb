class Man
    attr_accessor :name, :hair, :gender,:weight, :height, :age, :phone, :email, :nation

    def initialize(name, hair, gender, weight, height, age, phone, email, nation)
        @name = name
        @hair = hair
        @gender = gender
        @weight = weight
        @height = height
        @age = age
        @phone = phone
        @email = email
        @nation = nation
    end

    def show
        puts "Tên : #{name}, Màu tóc: #{hair}, Giới tính: #{gender}, Cân nặng: #{weight}, Chiều cao: #{height}, Tuổi: #{age}, Số điện thoại: #{phone}, Email: #{email}, Dân tộc: #{nation}"
    end

    def to_array
        # Array[@name, @hair, @weight, @height, @age, @phone, @email, @nation]
        Array[{name:"#{@name}", hair:"#{@hair}", weight:"#{@weight}", height:"#{@height}", age:"#{@age}", phone:"#{@phone}", email:"#{@email}", nation:"#{@nation}"}]
    end
end

class Student < Man
    attr_accessor :student_id, :class_name, :grades1, :grades2, :grades3, :average

    def average_grade
        @average = ((@grades1 + @grades2 + @grades3) / 3.0).round(2)
    end

    def show
        puts "Mã sinh viên: #{student_id}, Lớp: #{class_name}, Điểm trung bình: #{average_grade}"
        super
    end

    def to_array
        # Array[@student_id, @class_name, @grades1, @grades2, @grades3, @ave, super]
        Array[{id: "#{@student_id}",  name:"#{@name}", class: "#{@class_name}", average: "#{@ave}", hair: "#{@hair}", weight: "#{@weight}", height: "#{@height}", age:"#{@age}", phone:"#{@phone}", email:"#{@email}", nation:"#{@nation}"}]
    end
end


puts "Nhập số lượng sinh viên:"
n = gets.chomp.to_i

stds = Array.new

(0..n-1).each do |i|
    puts "\nSTT: #{i+1}"
    puts "Mã sinh viên:"
    id = gets.chomp
    puts "Tên sinh viên:"
    name = gets.chomp
    puts "Lớp:"
    class_name = gets.chomp
    puts "Giới tính:"
    gender = gets.chomp
    puts "Điểm cột 1:"
    grades1 = gets.chomp.to_i
    puts "Điểm cột 2:"
    grades2 = gets.chomp.to_i
    puts "Điểm cột 3:"
    grades3 = gets.chomp.to_i
    puts "Tóc:"
    hair = gets.chomp
    puts "Cân nặng (kg):"
    weight = gets.chomp
    puts "Chiều cao (cm):"
    height = gets.chomp
    puts "Tuổi:"
    age = gets.chomp
    puts "Số điện thoại:"
    phone = gets.chomp
    puts "Email:"
    email = gets.chomp
    puts "Dân tộc:"
    nation = gets.chomp

    std = Student.new(name, hair, gender, weight, height, age, phone, email, nation)
    std.student_id = id
    std.class_name = class_name
    std.grades1 = grades1
    std.grades2 = grades2
    std.grades3 = grades3

    stds << std
end

system("cls") || system("clear")
puts "\n***DANH SÁCH SINH VIÊN***\n"
stds.each_index {
    |index|
    puts "#{stds[index].show()}"
}

puts "\n***DANH SÁCH SINH VIÊN (SẮP XẾP THEO ĐIỂM TRUNG BÌNH)***\n"
for std_sort in stds.sort_by {|stu| [stu.average_grade]}.reverse! do
    puts "#{std_sort.show}"
end
