puts "Nhập độ dài cạnh a:"
a = gets.to_i

puts "Nhập độ dài cạnh b:"
b = gets.to_i

puts "Nhập độ dài cạnh c:"
c = gets.to_i

if a < b + c && b < a + c && c < a + b
    p = (a + b + c) / 2
    S = Math.sqrt(p * (p-a) * (p-b) * (p-c))
    puts "Chu vi tam giác là: #{p*2}"
    puts "Diện tích tam giác là: #{S}"
else
    puts "Đây không phải tam giác"
end
