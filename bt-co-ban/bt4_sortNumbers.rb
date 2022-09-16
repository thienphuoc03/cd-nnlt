puts "Nhập số thứ nhất:"
num1 = gets.to_i

puts "Nhập số thứ hai:"
num2 = gets.to_i

puts "Nhập số thứ ba:"
num3 = gets.to_i

def sort_numbers(a, b, c)
    if a > b
        t = a
        a = b
        b = t
    end
    if b > c
        t = b
        b = c
        c = t
    end
    if a > b
        t = a
        a = b
        b = t
    end
    puts "Sắp xếp tăng dần: #{a} < #{b} < #{c}"
    puts "Sắp xếp giảm dần: #{c} > #{b} > #{a}"
end

sort_numbers(num1, num2, num3)
