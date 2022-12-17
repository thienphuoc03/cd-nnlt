# Viết chương trình cho phép nhập vào n, sau đó nhập vào n phần tử số nguyên dương. Cuối cùng, chương trình sẽ xuất ra phần tử có giá trị nhỏ nhất trong các số vừa nhập.

puts "Nhap n:"
n_143 = gets.to_i

arr_143 = []
(0..n_143-1).each do |i|
    puts "Nhập phần tử thứ #{i}: "
    num_143 = gets.to_i
    arr_143.push(num_143)
end

puts "Array = #{arr_143}"

puts "Phần tử nhỏ nhất: #{arr_143.min}"
